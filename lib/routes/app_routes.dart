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
  static const selectTransport = _Paths.selectTransport;
  static const availableCars = _Paths.availableCars;
  static const carDetails = _Paths.carDetails;
  static const requestSent = _Paths.requestSent;
  static const success = _Paths.success;
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
  static const selectTransport = '/selectTransport';
  static const availableCars = '/availableCars';
  static const carDetails = '/carDetails';
  static const requestSent = '/requestSent';
  static const success = '/success';
}
