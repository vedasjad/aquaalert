import 'package:aquaalert/core/use_cases/use_cases.dart';
import 'package:aquaalert/core/utils/type_def.dart';

import '../entities/user.dart';
import '../repositories/on_boarding_repository.dart';

class LoginUser implements UseCaseWithParams<User, LoginParams> {
  final OnBoardingRepository repository;

  LoginUser(this.repository);

  @override
  ResultFuture<User> call(LoginParams params) async {
    return repository.login(params.email, params.password);
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams({
    required this.email,
    required this.password,
  });
}
