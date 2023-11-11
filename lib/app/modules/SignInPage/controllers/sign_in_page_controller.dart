import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      print("Validate");
    }
    return null;
  }
}
