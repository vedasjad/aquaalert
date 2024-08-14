import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/network/client/network_info.dart';
import '../../../../core/utils/type_def.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../sources/auth_local_data_source.dart';
import '../sources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
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
