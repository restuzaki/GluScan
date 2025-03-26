import 'package:get/get.dart';
import 'package:project_sehat/app/modules/qrscan/controllers/qr_scan_controller.dart';

class ScanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanController>(
      () => ScanController(),
    );
  }
}
