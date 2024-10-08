import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riderapp/shared/models/user.dart';

class AuthService extends GetxService {
  static AuthService to = Get.find();
  final GetStorage _storage = GetStorage('Rideapp');
  late User currentUser;

  // Check if email or phone number is already used
  bool isEmailOrPhoneUsed(String email, String phoneNumber) {
    final userData = _storage.read<String>('user');
    if (userData != null) {
      final storedUser = User.fromJsonString(userData);
      return storedUser.email == email || storedUser.phoneNumber == phoneNumber;
    }
    return false;
  }

  // Save user to GetStorage
  bool saveUser(User user) {
    if (!isEmailOrPhoneUsed(user.email, user.phoneNumber)) {
      _storage.write('user', user.toJsonString());
      _storage.write('isLoggedIn', true); // Mark user as logged in
      return true;
    }
    return false; // Email or phone number already used
  }

  // Retrieve user from GetStorage
  User? getUser() {
    final userData = _storage.read<String>('user');
    if (userData != null) {
      return User.fromJsonString(userData);
    }
    return null;
  }

  // Perform login (check if the user exists and credentials match by email or phone number)
  bool login(String identifier, String password) {
    final user = getUser();
    if (user != null &&
        (user.email == identifier || user.phoneNumber == identifier) &&
        user.password == password) {
      currentUser = user;
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
