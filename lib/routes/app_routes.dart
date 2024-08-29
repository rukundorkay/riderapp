part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const onboard = _Paths.onboard;
  static const welcome = _Paths.welcome;
}

abstract class _Paths {
  _Paths._();
  static const welcome = '/welcome';
  static const onboard = '/onboard';
}
