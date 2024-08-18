import '../../../../core/network/client/dio_client.dart';
import '../models/user_model.dart';

abstract class OnBoardingRemoteDataSource {
  Future<UserModel> login(String email, String password);
}

class OnBoardingRemoteDataSourceImpl implements OnBoardingRemoteDataSource {
  final DioClient dioClient;

  OnBoardingRemoteDataSourceImpl(this.dioClient);

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
