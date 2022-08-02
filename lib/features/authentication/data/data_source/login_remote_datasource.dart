import 'package:dio/dio.dart';
import 'package:clean_arch_app/core/error/exceptions.dart';
import 'package:clean_arch_app/features/authentication/data/model/account_entity_model.dart';


abstract class LoginRemoteDataSource{
  Future<AccountEntityModel>getLoginRemoteDataSource(String name,String password);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource{
  final Dio dio;
  LoginRemoteDataSourceImpl({required this.dio});

  BaseOptions options = BaseOptions(
    baseUrl: 'http://.........',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  @override
  Future<AccountEntityModel> getLoginRemoteDataSource(String name,String password) async{
     Dio dio = Dio(options);
    try {
      Response response = await dio.post('/api/authaccount/login',
          data: {'name': name,
                 'password': password,
          });
      var r = AccountEntityModel.fromJson(response.data);
      String token = r.token;
      return AccountEntityModel(token: token);
    } on DioError {
      throw ServerException();
    }
  }

}