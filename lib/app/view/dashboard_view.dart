import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
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
            style: TabStyle.textIn,
            elevation: 5,
            activeColor: Colors.white,
            items: const [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.message, title: 'Pesan'),
              TabItem(icon: Icons.people, title: 'Profile'),
            ],
            initialActiveIndex: controller.tabindex, 
            onTap: controller.pindahTabIndex,
            
          ),
        );
      },
    );
  }
}
