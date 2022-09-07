import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sikadu_ortu/app/controllers/auth_c_controller.dart';
import 'package:sikadu_ortu/app/routes/page_routes.dart';
import 'package:sikadu_ortu/app/routes/routes_name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesName.login,
      getPages: appPage.pages,
    );
  }
}
