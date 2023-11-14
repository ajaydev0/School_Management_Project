import 'package:get/get.dart';

import '../modules/AllEvents/bindings/all_events_binding.dart';
import '../modules/AllEvents/views/all_events_view.dart';
import '../modules/EventDetails/bindings/event_details_binding.dart';
import '../modules/EventDetails/views/event_details_view.dart';
import '../modules/HomePage/bindings/home_page_binding.dart';
import '../modules/HomePage/views/home_page_view.dart';
import '../modules/NavPage/bindings/nav_page_binding.dart';
import '../modules/NavPage/views/nav_page_view.dart';
import '../modules/NotificationsPage/bindings/notifications_page_binding.dart';
import '../modules/NotificationsPage/views/notifications_page_view.dart';
import '../modules/ProfilePage/bindings/profile_page_binding.dart';
import '../modules/ProfilePage/views/profile_page_view.dart';
import '../modules/SelectUserPage/bindings/select_user_page_binding.dart';
import '../modules/SelectUserPage/views/select_user_page_view.dart';
import '../modules/SignInPage/bindings/sign_in_page_binding.dart';
import '../modules/SignInPage/views/sign_in_page_view.dart';
import '../modules/onboard/bindings/onboard_binding.dart';
import '../modules/onboard/views/onboard_view.dart';
import '../modules/splash_screen/binding/splash_binding.dart';
import '../modules/splash_screen/view/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const initialPage = Routes.splashScreen;
  static final pages = [
    GetPage(
      name: _Path.splashScreen,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.onBoard,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: Routes.selectUserPage,
      page: () => const SelectUserPageView(),
      binding: SelectUserPageBinding(),
    ),
    GetPage(
      name: Routes.signInPage,
      page: () => const SignInPageView(),
      binding: SignInPageBinding(),
    ),
    GetPage(
      name: Routes.NAV_PAGE,
      page: () => const NavPageView(),
      binding: NavPageBinding(),
    ),
    GetPage(
      name: Routes.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: Routes.PROFILE_PAGE,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: Routes.ALL_EVENTS,
      page: () => const AllEventsView(),
      binding: AllEventsBinding(),
    ),
    GetPage(
      name: Routes.EVENT_DETAILS,
      page: () => const EventDetailsView(),
      binding: EventDetailsBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATIONS_PAGE,
      page: () => const NotificationsPageView(),
      binding: NotificationsPageBinding(),
    ),
  ];
}
