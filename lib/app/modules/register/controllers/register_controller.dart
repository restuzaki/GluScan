import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  var isObscure = true.obs;

  void togglePasswordVisibility() {
    isObscure.value = !isObscure.value;
  }

  void register() {
    String name = nameController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();
    String username = emailController.text.trim();
    String password = passwordController.text.trim();

    if (name.isEmpty ||
        confirmPassword.isEmpty ||
        username.isEmpty ||
        password.isEmpty) {
      Get.snackbar("Error", "Please fill all fields",
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    if (password != confirmPassword) {
      Get.snackbar("Error", "Passwords do not match",
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    // Simulasi registrasi sukses
    Get.snackbar("Success", "Registration Successful",
        snackPosition: SnackPosition.BOTTOM);

    // Bersihkan form setelah registrasi sukses
    nameController.clear();
    confirmPasswordController.clear();
    emailController.clear();
    passwordController.clear();

    Get.offNamed('/login');
  }

  @override
  void onClose() {
    nameController.dispose();
    confirmPasswordController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
