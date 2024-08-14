import 'package:aquaalert/features/auth/presentation/controllers/auth_controller.dart';
import 'package:get/get.dart';

import 'data/repositories/auth_repository_impl.dart';
import 'data/sources/auth_local_data_source.dart';
import 'data/sources/auth_remote_data_source.dart';
import 'domain/repositories/auth_repository.dart';
import 'domain/use_cases/login_user.dart';

class AuthModule extends GetxService {
  void init() {
    Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(
        Get.find(),
      ),
    );
    Get.lazyPut<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(),
    );
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
        remoteDataSource: Get.find(),
        localDataSource: Get.find(),
        networkInfo: Get.find(),
      ),
    );
    Get.lazyPut<LoginUser>(
      () => LoginUser(
        Get.find(),
      ),
    );
    Get.lazyPut<AuthController>(
      () => AuthController(
        Get.find(),
      ),
    );
  }
}
