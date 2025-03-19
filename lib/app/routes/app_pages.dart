import 'package:get/get.dart';
import 'package:project_sehat/app/modules/boarding/bindings/boarding_binding.dart';
import 'package:project_sehat/app/modules/boarding/views/boarding_view.dart';
import 'package:get_storage/get_storage.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static final box = GetStorage();
  static final initial =
      box.read('seenOnboarding') == true ? Routes.HOME : Routes.BOARDING;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.BOARDING,
      page: () => BoardingView(),
      binding: BoardingBinding(),
    ),
  ];
}
