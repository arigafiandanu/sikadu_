import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabindex,
              children: const [
                HomepageView(),
                listChat(),
                profilView(),
              ],
            ),
          ),
          bottomNavigationBar: ConvexAppBar(
            style: TabStyle.flip,
            elevation: 5,
            activeColor: Colors.white,
            items: const [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.message, title: 'Pesan'),
              TabItem(icon: Icons.person, title: 'Profil'),
            ],
            initialActiveIndex: controller.tabindex,
            onTap: controller.pindahTabIndex,
          ),
        );
      },
    );
  }
}
