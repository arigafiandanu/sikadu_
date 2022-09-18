import 'package:get/get.dart';
import 'package:sikadu_ortu/app/controllers/dashboard_c_Controller.dart';
import 'package:sikadu_ortu/app/controllers/home_c_controller.dart';
import 'package:sikadu_ortu/app/controllers/listChat_c_controller.dart';
import 'package:sikadu_ortu/app/controllers/profil_c_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<HomeCController>(
      () => HomeCController(),
    );
    Get.lazyPut<listChatController>(
      () => listChatController(),
    );
    Get.lazyPut<ProfilController>(
      () => ProfilController(),
    );
  }
}
