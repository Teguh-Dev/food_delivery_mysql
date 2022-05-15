import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void goToRegisterPage() {
    Get.toNamed('/register');
  }

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('email ${email}');
    print('password ${password}');

    if (isValidForm(email, password)) {
      Get.snackbar('Form is Valid', 'sekarang bisa ke http backend');
    }

    // Get.snackbar('EMail', email);
    // Get.snackbar('Password', password);
  }

  bool isValidForm(String email, String password) {
    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Email tidak valid', 'Email tidak valid');
      return false;
    }

    if (email.isEmpty) {
      Get.snackbar('Error Login Page', 'Email harus di isi');
      return false;
    }

    if (password.isEmpty) {
      Get.snackbar('Error Login Page', 'Email harus di isi');
      return false;
    }
    return true;
  }
}
