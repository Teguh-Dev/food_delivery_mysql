import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void register() {
    String email = emailController.text.trim();
    String name = nameController.text.trim();
    String lastName = lastnameController.text.trim();
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    print('email ${email}');
    print('password ${password}');

    if (isValidForm(email, name, lastName, phone, password, confirmPassword)) {
      Get.snackbar('Form is Valid', 'sekarang bisa ke http backend');
    }

    // Get.snackbar('EMail', email);
    // Get.snackbar('Password', password);
  }

  bool isValidForm(
    String email,
    String name,
    String lastname,
    String phone,
    String password,
    String confirmPassword,
  ) {
    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Email tidak valid', 'Email tidak valid');
      return false;
    }

    if (email.isEmpty) {
      Get.snackbar('Error Register Page', 'Email harus di isi');
      return false;
    }

    if (name.isEmpty) {
      Get.snackbar('Error Register Page', 'Nama depan harus di isi');
      return false;
    }

    if (lastname.isEmpty) {
      Get.snackbar('Error Register Page', 'Nama belakang harus di isi');
      return false;
    }

    if (phone.isEmpty) {
      Get.snackbar('Error Register Page', 'No telepon harus di isi');
      return false;
    }

    if (password.isEmpty) {
      Get.snackbar('Error Register Page', 'Password harus di isi');
      return false;
    }
    if (confirmPassword.isEmpty) {
      Get.snackbar('Error Register Page', 'Password konfirmasi harus di isi');
      return false;
    }

    if (password != confirmPassword) {
      Get.snackbar('Error Register Page', 'Password konfirmasi tidak sama');
      return false;
    }
    return true;
  }
}
