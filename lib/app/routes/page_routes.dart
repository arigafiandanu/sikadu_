import 'package:get/get.dart';
import 'package:sikadu_ortu/app/binding/dashboard_binding.dart';
import 'package:sikadu_ortu/app/binding/home_binding.dart';
import 'package:sikadu_ortu/app/binding/listChat_binding.dart';
import 'package:sikadu_ortu/app/binding/profil_binding.dart';
import 'package:sikadu_ortu/app/routes/routes_name.dart';
import 'package:sikadu_ortu/app/view/LupaPass_view.dart';
import 'package:sikadu_ortu/app/view/absensi_view.dart';
import 'package:sikadu_ortu/app/view/chat_view.dart';
import 'package:sikadu_ortu/app/view/dashboard_view.dart';
import 'package:sikadu_ortu/app/view/homepage_view.dart';
import 'package:sikadu_ortu/app/view/jadwal_view.dart';
import 'package:sikadu_ortu/app/view/listChat_view.dart';
import 'package:sikadu_ortu/app/view/login_view.dart';
import 'package:sikadu_ortu/app/view/pengumuman_view.dart';
import 'package:sikadu_ortu/app/view/profil_view.dart';
import 'package:sikadu_ortu/app/view/rekapNilai_view.dart';

class appPage {
  static final pages = [
    GetPage(
      name: RoutesName.login,
      page: () => loginView(),
    ),
    GetPage(
      name: RoutesName.home,
      page: () => HomepageView(),
      binding: homeBinding(),
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
      binding: listChatBinding(),
    ),
    GetPage(
      name: RoutesName.profil,
      page: () => profilView(),
      binding: profilBinding(),
    ),
    GetPage(
      name: RoutesName.dashboard,
      page: () => dashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: RoutesName.absensi,
      page: () => AbsensiView(),
    ),
    GetPage(
      name: RoutesName.jadwal,
      page: () => JadwalView(),
    ),
    GetPage(
      name: RoutesName.pengumuman,
      page: () => PengumumanView(),
    ),
    GetPage(
      name: RoutesName.rekapNilai,
      page: () => RekapNilaiView(),
    ),
  ];
}
