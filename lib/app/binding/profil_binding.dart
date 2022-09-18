import 'package:get/get.dart';
import 'package:sikadu_ortu/app/controllers/profil_c_controller.dart';

class profilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilController>(
      () => ProfilController(),
    );
  }
}
