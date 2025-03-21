import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_sehat/app/routes/app_pages.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GetStorage box = GetStorage();

  var isObscure = true.obs;

  void togglePasswordVisibility() {
    isObscure.value = !isObscure.value;
  }

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email == "admin" && password == "1234") {
      box.write('isLoggedIn', true);
      Get.snackbar("Success", "Login Successful",
          snackPosition: SnackPosition.TOP);
      Get.offAndToNamed(Routes.HOME);
    } else {
      Get.snackbar("Error", "Invalid Username or Password",
          snackPosition: SnackPosition.TOP);
    }
  }
}
