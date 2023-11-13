import 'package:get/get.dart';

import '../../HomePage/views/home_page_view.dart';
import '../../ProfilePage/views/profile_page_view.dart';

class NavPageController extends GetxController {
  RxInt selectIndex = 0.obs;

  RxList<dynamic> pages = [
    const HomePageView(),
    const ProfilePageView(),
  ].obs;
}
