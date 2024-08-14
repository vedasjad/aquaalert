import '../../../../core/network/client/dio_client.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioClient dioClient;

  AuthRemoteDataSourceImpl(this.dioClient);

  @override
  Future<UserModel> login(String email, String password) async {
    final response = await dioClient.get(
      '/login',
      queryParameters: {
        'email': email,
        'password': password,
      },
    );

    return UserModel.fromJson(response.data);
  }
}
