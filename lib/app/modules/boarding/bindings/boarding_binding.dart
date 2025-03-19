import 'package:get/get.dart';
import 'package:project_sehat/app/modules/boarding/controllers/boarding_controller.dart';

class BoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BoardingController>(
      () => BoardingController(),
    );
  }
}
