import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_select_page_controller.dart';

class UserSelectPageView extends GetView<UserSelectPageController> {
  const UserSelectPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserSelectPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UserSelectPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
