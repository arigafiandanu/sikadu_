import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabindex = 0;

  void pindahTabIndex(int index) {
    tabindex = index;
    update();
  }
}
