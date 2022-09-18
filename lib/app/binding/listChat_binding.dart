import 'package:get/get.dart';
import 'package:sikadu_ortu/app/controllers/listChat_c_controller.dart';

class listChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<listChatController>(
      () => listChatController(),
    );
  }
}
