import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sikadu_ortu/app/controllers/auth_c_controller.dart';
import 'package:sikadu_ortu/app/routes/routes_name.dart';
import 'package:sikadu_ortu/app/widget/Custom_widget.dart';

import '../style/text_style.dart';

class loginView extends StatelessWidget {
  final authC = Get.find<AuthController>();
  loginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: Get.width,
            height: Get.height * 0.4,
            child: Lottie.asset(
              "assets/lottie/login_ortu.json",
            ),
          ),
          Column(
            children: [
              CustomFormField(
                headingText: "Email",
                hintText: "Email",
                obsecureText: false,
                suffixIcon: const SizedBox(),
                controller: authC.emailC,
                maxLines: 1,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              Obx(
                () => CustomFormField(
                  headingText: "Password",
                  maxLines: 1,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.text,
                  hintText: "At least 8 Character",
                  obsecureText: authC.hidepass.value,
                  suffixIcon: IconButton(
                    icon: authC.hidepass.value
                        ? const Icon(
                            Icons.visibility_off,
                            color: Colors.blue,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: Colors.blue,
                          ),
                    onPressed: () {
                      authC.hidepass.value = !authC.hidepass.value;
                    },
                  ),
                  controller: authC.PasswordC,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 24),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(RoutesName.lupaPas);
                      },
                      child: Text(
                        "Lupa Password?",
                        style: TextStyle(
                            color: AppColors.blue.withOpacity(0.7),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          AuthButton(
            onTap: () {
              Get.offAllNamed(RoutesName.dashboard);
            },
            text: "Login",
          )
        ],
      ),
    );
  }
}
