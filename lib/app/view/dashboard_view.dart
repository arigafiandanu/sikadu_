import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sikadu_ortu/app/controllers/dashboard_c_Controller.dart';
import 'package:sikadu_ortu/app/view/homepage_view.dart';
import 'package:sikadu_ortu/app/view/listChat_view.dart';
import 'package:sikadu_ortu/app/view/profil_view.dart';

class dashboardView extends StatelessWidget {
  const dashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabindex,
            children: [
              HomepageView(),
              listChat(),
              profilView(),
            ],
          ),
        ),
      );
    });
  }
}
