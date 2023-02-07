import 'package:noucav/Dio/dio_api.dart';
import 'package:noucav/config.dart';

import '../entities/user_model.dart';

class AuthRemoteDataSource extends DioApi {
  AuthRemoteDataSource() : super(Config.appUrl);

  Future<User> login(String email, String password) async {
    final response = await dio.post(
      '/login',
      data: {
        'email': email,
        'password': password,
      },
    );

    return User.fromJson(response.data);
  }

  Future<User> register(String email, String password) async {
    final response = await dio.post(
      '/register',
      data: {
        'email': email,
        'password': password,
      },
    );

    return User.fromJson(response.data);
  }
}
