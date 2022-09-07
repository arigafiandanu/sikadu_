import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController PasswordC = TextEditingController();
  RxBool hidepass = true.obs;
}
