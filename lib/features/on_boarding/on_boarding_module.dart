import 'package:aquaalert/features/on_boarding/presentation/controllers/on_boarding_controller.dart';
import 'package:get/get.dart';

import 'data/repositories/on_boarding_repository_impl.dart';
import 'data/sources/on_boarding_local_data_source.dart';
import 'data/sources/on_boarding_remote_data_source.dart';
import 'domain/repositories/on_boarding_repository.dart';
import 'domain/use_cases/login_user.dart';
import 'features/sign_up/data/repositories/sign_up_repository_impl.dart';
import 'features/sign_up/domain/respositories/sign_up_repository.dart';
import 'features/sign_up/domain/use_cases/connect_controller.dart';
import 'features/sign_up/presentation/controllers/add_main_controller_page/add_main_controller_page_controller.dart';
import 'features/sign_up/presentation/navigation_handler/sign_up_navigation_handler.dart';

class OnBoardingModule extends GetxService {
  void init() {
    Get.lazyPut<OnBoardingRemoteDataSource>(
      () => OnBoardingRemoteDataSourceImpl(
        Get.find(),
      ),
    );
    Get.lazyPut<OnBoardingLocalDataSource>(
      () => OnBoardingLocalDataSourceImpl(),
    );
    Get.lazyPut<OnBoardingRepository>(
      () => OnBoardingRepositoryImpl(
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
    Get.lazyPut<OnBoardingController>(
      () => OnBoardingController(
        Get.find(),
      ),
    );
    Get.lazyPut<SignUpRepository>(
      () => SignUpRepositoryImpl(),
    );
    Get.lazyPut<SignUpNavigationHandler>(
      () => SignUpNavigationHandlerImpl(),
    );
    Get.lazyPut<ConnectController>(
      () => ConnectController(
        Get.find(),
      ),
    );
    Get.lazyPut<AddMainControllerPageController>(
      () => AddMainControllerPageController(
        connectController: Get.find(),
        navigationHandler: Get.find(),
      ),
    );
  }
}
