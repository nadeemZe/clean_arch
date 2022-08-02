

import 'package:clean_arch_app/core/error/exceptions.dart';
import 'package:clean_arch_app/core/external/network_checker.dart';
import 'package:clean_arch_app/features/authentication/data/data_source/login_remote_datasource.dart';
import 'package:clean_arch_app/features/authentication/domain/entity/account_entity.dart';
import 'package:clean_arch_app/features/authentication/domain/repository/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository{
  final LoginRemoteDataSource loginRemoteDataSource;
  final NetworkChecker networkChecker;


  LoginRepositoryImpl({required this.loginRemoteDataSource,required this.networkChecker});

  @override
  Future<AccountEntity> getLoginRepository(String userName, String password) async{

    if(await networkChecker.online){
      return loginRemoteDataSource.getLoginRemoteDataSource(userName,password);
    }
    else {
      throw ServerException();
    }


  }

}