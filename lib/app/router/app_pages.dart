import 'package:get/get.dart';

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
  ];
}
