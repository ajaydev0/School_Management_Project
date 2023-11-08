part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashScreen = _Path.splashScreen;
  static const signInPage = _Path.signInPage;
  static const onBoard = _Path.onBoard;
  static const USER_SELECT_PAGE = '/user-select-page';
}

abstract class _Path {
  _Path._();
  static const splashScreen = "/";
  static const onBoard = '/onBoard';
  static const signInPage = "/SignInPage";
}
