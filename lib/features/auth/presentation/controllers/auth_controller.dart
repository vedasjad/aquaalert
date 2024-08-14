import 'package:get/get.dart';

import '../../domain/use_cases/login_user.dart';

class AuthController extends GetxController {
  final LoginUser loginUser;

  AuthController(this.loginUser);

  void login(String email, String password) async {
    final result = await loginUser(
      LoginParams(
        email: email,
        password: password,
      ),
    );
    result.fold(
      (failure) {
        // Handle failure
      },
      (user) {
        // Handle success
      },
    );
  }
}
