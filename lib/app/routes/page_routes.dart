import 'package:get/get.dart';
import 'package:sikadu_ortu/app/routes/routes_name.dart';
import 'package:sikadu_ortu/app/view/LupaPass_view.dart';
import 'package:sikadu_ortu/app/view/chat_view.dart';
import 'package:sikadu_ortu/app/view/dashboard_view.dart';
import 'package:sikadu_ortu/app/view/homepage_view.dart';
import 'package:sikadu_ortu/app/view/listChat_view.dart';
import 'package:sikadu_ortu/app/view/login_view.dart';
import 'package:sikadu_ortu/app/view/profil_view.dart';

class appPage {
  static final pages = [
    GetPage(
      name: RoutesName.login,
      page: () => loginView(),
    ),
    GetPage(
      name: RoutesName.home,
      page: () => HomepageView(),
    ),
    GetPage(
      name: RoutesName.lupaPas,
      page: () => lupaPass(),
    ),
    GetPage(
      name: RoutesName.chat,
      page: () => chatView(),
    ),
    GetPage(
      name: RoutesName.listchat,
      page: () => listChat(),
    ),
    GetPage(
      name: RoutesName.profil,
      page: () => profilView(),
    ),
    GetPage(
      name: RoutesName.dashboard,
      page: () => dashboardView(),
    ),
  ];
}
