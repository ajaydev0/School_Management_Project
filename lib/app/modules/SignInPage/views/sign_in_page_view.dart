import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school_management_app/app/const/colors.dart';

import '../controllers/sign_in_page_controller.dart';

class SignInPageView extends GetView<SignInPageController> {
  const SignInPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SignInPageController());
    return Scaffold(
        backgroundColor: Kcolor.white,
        body: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(height: 120),
          Text(
            controller.isUser ? "Welcome Teacher" : "Welcome Student",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Container(
            height: 240,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/login.jpg"))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Kcolor.white,
                child: Form(
                    key: controller.fromkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          child: TextFormField(
                            controller: controller.email,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              return controller.validateEmail(value);
                            },
                            cursorColor: Kcolor.black,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Kcolor.amber)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Kcolor.amber)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Kcolor.amber)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.red)),
                                labelText: " E-mail",
                                labelStyle: TextStyle(color: Kcolor.black),
                                fillColor: Kcolor.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          child: TextFormField(
                            controller: controller.pass,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              return controller.validatePassword(value);
                            },
                            cursorColor: Kcolor.black,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Kcolor.amber)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Kcolor.amber)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Kcolor.amber)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.red)),
                                labelText: " Password",
                                labelStyle: TextStyle(color: Kcolor.black),
                                fillColor: Kcolor.black),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Get.dialog(Dialog(
                                    backgroundColor: Kcolor.white,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const SizedBox(height: 20),
                                        Container(
                                          height: 120,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/forgot password.png"))),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20, top: 20),
                                          child: TextFormField(
                                            cursorColor: Kcolor.black,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(
                                                        20),
                                                    borderSide: BorderSide(
                                                        color: Kcolor.amber)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    borderSide: BorderSide(
                                                        color: Kcolor.amber)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    borderSide: BorderSide(
                                                        color: Kcolor.amber)),
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                    borderSide: const BorderSide(color: Colors.red)),
                                                labelText: " E-mail",
                                                labelStyle: TextStyle(color: Kcolor.black),
                                                fillColor: Kcolor.black),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        SizedBox(
                                            height: 50,
                                            width: 150,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    elevation: 5,
                                                    backgroundColor:
                                                        Kcolor.amber,
                                                    foregroundColor:
                                                        Kcolor.black),
                                                onPressed: () {},
                                                child: const Text("Reset",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16)))),
                                        const SizedBox(height: 30),
                                      ],
                                    ),
                                  ));
                                },
                                child: Text(
                                  "reset password",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Kcolor.black,
                                      fontSize: 12),
                                )),
                            const SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Kcolor.amber,
                      foregroundColor: Kcolor.black),
                  onPressed: () {
                    controller.logInClick();
                  },
                  child: const Text("Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)))),
        ])));
  }
}
