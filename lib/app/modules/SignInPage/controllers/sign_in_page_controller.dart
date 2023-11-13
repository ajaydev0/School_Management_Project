import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_management_app/app/router/app_pages.dart';

class SignInPageController extends GetxController {
  bool isUser = Get.arguments;
  GlobalKey<FormState> fromkey = GlobalKey<FormState>();
  late final TextEditingController email = TextEditingController();
  late final TextEditingController pass = TextEditingController();
  validateEmail(value) {
    if (value == null || value.trim().isEmpty) {
      return " Required";
    }

    return null;
  }

  validatePassword(value) {
    if (value == null || value.trim().isEmpty) {
      return " Required";
    }

    return null;
  }

  logInClick() {
    if (fromkey.currentState!.validate()) {
      Get.toNamed(Routes.NAV_PAGE);
      print("Validate");
    }
    return null;
  }
}
