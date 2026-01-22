import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:scube_app_task/core/routes/app_routes.dart';

class LoginController extends GetxController {
  final username = TextEditingController();
  final password = TextEditingController();

  var isPasswordVisible = false.obs;
  var isLoginVisible = false.obs;

  void togglePassword() {
    isPasswordVisible.toggle();
  }

  void login() {
    Get.offAllNamed(AppRoutes.home);
  }
}
