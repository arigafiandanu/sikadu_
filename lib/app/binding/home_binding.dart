import 'package:get/get.dart';
import 'package:sikadu_ortu/app/controllers/home_c_controller.dart';

class homeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeCController>(
      () => HomeCController(),
    );
  }
}
