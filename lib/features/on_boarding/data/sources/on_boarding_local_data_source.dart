import '../models/user_model.dart';

abstract class OnBoardingLocalDataSource {
  Future<void> cacheUser(UserModel user);
  Future<UserModel?> getCachedUser();
}

class OnBoardingLocalDataSourceImpl implements OnBoardingLocalDataSource {
  @override
  Future<void> cacheUser(UserModel user) async {}

  @override
  Future<UserModel?> getCachedUser() async {
    return null;
  }
}
