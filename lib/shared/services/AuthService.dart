import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riderapp/shared/models/user.dart';

class AuthService extends GetxService {
  static AuthService to = Get.find();
  final GetStorage _storage = GetStorage('Rideapp');

  // Save user to GetStorage
  void saveUser(User user) {
    _storage.write('user', user.toJsonString());
    _storage.write('isLoggedIn', true); // Mark user as logged in
  }

  // Retrieve user from GetStorage
  User? getUser() {
    final userData = _storage.read<String>('user');
    if (userData != null) {
      return User.fromJsonString(userData);
    }
    return null;
  }

  // Perform login (check if the user exists and credentials match)
  bool login(String email, String password) {
    final user = getUser();
    if (user != null && user.email == email && user.password == password) {
      _storage.write('isLoggedIn', true); // Mark user as logged in
      return true;
    }
    return false;
  }

  // Perform logout (clear user data and update login status)
  void logout() {
    _storage.remove('user'); // Remove user data
    _storage.write('isLoggedIn', false); // Mark user as logged out
  }

  // Check if user is logged in
  bool isLoggedIn() {
    return _storage.read<bool>('isLoggedIn') ?? false;
  }
}
