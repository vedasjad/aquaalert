import 'package:aquaalert/core/utils/type_def.dart';

import '../entities/user.dart';

abstract class AuthRepository {
  ResultFuture<User> login(String email, String password);
}
