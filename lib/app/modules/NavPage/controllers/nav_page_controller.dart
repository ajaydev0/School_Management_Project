import 'package:get/get.dart';
import 'package:school_management_app/app/modules/NotificationsPage/views/notifications_page_view.dart';
import '../../HomePage/views/home_page_view.dart';
import '../../ProfilePage/views/profile_page_view.dart';

class NavPageController extends GetxController {
  RxInt selectIndex = 0.obs;

  RxList<dynamic> pages = [
    const HomePageView(),
    const ProfilePageView(),
    const NotificationsPageView(),
  ].obs;
}
