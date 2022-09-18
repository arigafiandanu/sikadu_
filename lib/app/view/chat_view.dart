import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../widget/chat_widget.dart';

class chatView extends StatelessWidget {
  const chatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            Get.back();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Lottie.asset(
                  "assets/lottie/avatar.json",
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
        title: const Text("Dari Siapa"),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: const [
                        ItemChat(
                          isSender: true,
                          msg: "Hallo bu",
                          time: "12.00",
                        ),
                        ItemChat(
                          isSender: false,
                          msg: "y",
                          time: "12.01",
                        )
                      ],
                    );
                  }),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: context.mediaQueryPadding.bottom),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: Get.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: TextField(
                      // controller: controller.chatC,
                      autocorrect: false,
                      // onEditingComplete: () => controller.newChat(
                      //   controller.email as String,
                      //   Get.arguments as Map<String, dynamic>,
                      //   controller.chatC.text,
                      // ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Material(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.blue,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.send_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
