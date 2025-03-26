import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  void navigateToScan() {
    Get.toNamed('/scan');
  }

  void onTabTapped(int index) {
    currentIndex.value = index;

    if (currentIndex == 0) {
      Get.toNamed('/home');
    } else if (index == 1) {
      Get.toNamed('/favorite');
    } else if (index == 2) {
      Get.toNamed('/profil');
    }
  }
}
