import 'package:get/get.dart';

import '../controllers/user_select_page_controller.dart';

class UserSelectPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserSelectPageController>(
      () => UserSelectPageController(),
    );
  }
}
