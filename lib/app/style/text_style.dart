import 'package:flutter/material.dart';

class AppColors {
  static const lightsky = Color(0xFFA6C0FF);
  static const whiteshade = Color(0xFFF8F9FA);
  static const blue = Color(0xFF497fff);
  static const lightblueshade = Color(0xFF758CC8);
  static const grayshade = Color(0xFFEBEBEB);
  static const lightblue = Color(0xFF4B68D1);
  static const blackshade = Color(0xFF555555);
  static const hintText = Color(0xFFC7C7CD);
  static Color? biruTerang = Colors.blue[50];
  static Color? merahTerang = Colors.red[50];
  static Color? hijauTerang = Colors.green[50];
  static Color? birugelap = Colors.blue;
  static Color? merahGelap = Colors.red;
  static Color? hijauGelap = Colors.green;
}

class KTextStyle {
  static const headerTextStyle = TextStyle(
      color: AppColors.whiteshade, fontSize: 28, fontWeight: FontWeight.w700);

  static const textFieldHeading =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);

  static const textFieldHintStyle = TextStyle(
      color: AppColors.hintText, fontSize: 14, fontWeight: FontWeight.w500);

  static const authButtonTextStyle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.whiteshade);
}
