part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashScreen = _Path.splashScreen;
  static const onBoard = _Path.onBoardPage;
  static const selectUserPage = _Path.selectUserPage;
  static const signInPage = _Path.signInPage;
  static const NAV_PAGE = '/nav-page';
  static const HOME_PAGE = '/home-page';
  static const PROFILE_PAGE = '/profile-page';
  static const ALL_EVENTS = '/all-events';
  static const EVENT_DETAILS = '/event-details';
  static const NOTIFICATIONS_PAGE = '/notifications-page';
}

abstract class _Path {
  _Path._();
  static const splashScreen = "/";
  static const onBoardPage = '/on-Board-pages';
  static const selectUserPage = '/select-user-page';
  static const signInPage = '/sign-in-page';
}
