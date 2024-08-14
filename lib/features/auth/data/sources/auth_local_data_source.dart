import '../models/user_model.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheUser(UserModel user);
  Future<UserModel?> getCachedUser();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  @override
  Future<void> cacheUser(UserModel user) async {
    // Save the user data locally, e.g., using SharedPreferences
  }

  @override
  Future<UserModel?> getCachedUser() async {
    // Retrieve the user data locally
  }
}
