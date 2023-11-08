import 'package:get/get.dart';

import '../modules/auth/sign_in/binding/sign_in_binding.dart';
import '../modules/auth/sign_in/view/sign_in_view.dart';
import '../modules/onboard/bindings/onboard_binding.dart';
import '../modules/onboard/views/onboard_view.dart';
import '../modules/splash_screen/binding/splash_binding.dart';
import '../modules/splash_screen/view/splash_view.dart';
import '../modules/userSelectPage/bindings/user_select_page_binding.dart';
import '../modules/userSelectPage/views/user_select_page_view.dart';

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
      name: _Path.signInPage,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routes.onBoard,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: Routes.USER_SELECT_PAGE,
      page: () => const UserSelectPageView(),
      binding: UserSelectPageBinding(),
    ),
  ];
}
