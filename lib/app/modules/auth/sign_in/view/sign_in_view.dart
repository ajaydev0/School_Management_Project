import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignInController());
    return const Scaffold(
      body: Center(
        child: Text("Sign In Page"),
      ),
    );
  }
}
