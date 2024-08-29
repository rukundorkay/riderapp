part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const onboard = _Paths.onboard;
  static const welcome = _Paths.welcome;
  static const signup = _Paths.signup;
  static const login = _Paths.login;
  static const newPasword = _Paths.newPassword;
  static const home = _Paths.home;
  static const complain = _Paths.complain;
}

abstract class _Paths {
  _Paths._();
  static const welcome = '/welcome';
  static const onboard = '/onboard';
  static const signup = '/signup';
  static const login = '/login';
  static const newPassword = '/new_password';
  static const home = '/home';
  static const complain = '/complain';
}
