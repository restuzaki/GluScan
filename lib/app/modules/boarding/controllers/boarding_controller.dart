import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class BoardingController extends GetxController {
  PageController pageController = PageController();
  RxInt currentPage = 0.obs;
  final box = GetStorage();

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void completeOnboarding() {
    box.write('seenOnboarding', true);
    Get.offNamed('/login');
  }
}
