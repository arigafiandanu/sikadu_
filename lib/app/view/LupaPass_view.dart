import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sikadu_ortu/app/controllers/auth_c_controller.dart';
import 'package:sikadu_ortu/app/routes/routes_name.dart';
import 'package:sikadu_ortu/app/widget/Custom_widget.dart';

import '../style/text_style.dart';

class lupaPass extends StatelessWidget {
  final authC = Get.find<AuthController>();
  lupaPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Lupa Password",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
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
              "assets/lottie/lupa_password.json",
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
            ],
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          AuthButton(
            onTap: () {},
            text: "Lupa Passwod",
          )
        ],
      ),
    );
  }
}
