import 'package:get/get.dart';
import 'package:project_sehat/app/modules/boarding/bindings/boarding_binding.dart';
import 'package:project_sehat/app/modules/boarding/views/boarding_view.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_sehat/app/modules/login/bindings/login_binding.dart';
import 'package:project_sehat/app/modules/login/views/login_view.dart';
import 'package:project_sehat/app/modules/register/bindings/register_binding.dart';
import 'package:project_sehat/app/modules/register/views/register_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static final box = GetStorage();
  static final bool hasSeenOnboarding = box.read('seenOnboarding') ?? false;
  static final bool isLoggedIn = box.read('isLoggedIn') ?? false;

  static final initial = isLoggedIn
      ? Routes.HOME
      : (hasSeenOnboarding ? Routes.LOGIN : Routes.BOARDING);

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
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
