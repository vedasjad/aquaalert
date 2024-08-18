import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/network/client/network_info.dart';
import '../../../../core/utils/type_def.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/on_boarding_repository.dart';
import '../sources/on_boarding_local_data_source.dart';
import '../sources/on_boarding_remote_data_source.dart';

class OnBoardingRepositoryImpl implements OnBoardingRepository {
  final OnBoardingRemoteDataSource remoteDataSource;
  final OnBoardingLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  OnBoardingRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  ResultFuture<User> login(String email, String password) async {
    final bool isConnected = await networkInfo.isConnected();
    if (isConnected) {
      try {
        final remoteUser = await remoteDataSource.login(email, password);
        localDataSource.cacheUser(remoteUser);
        return Right(remoteUser.toEntity());
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localUser = await localDataSource.getCachedUser();
        return Right(localUser!.toEntity());
      } catch (e) {
        return Left(CacheFailure());
      }
    }
  }
}
