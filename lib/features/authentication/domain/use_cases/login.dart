

import 'package:clean_arch_app/features/authentication/domain/entity/account_entity.dart';
import 'package:clean_arch_app/features/authentication/domain/repository/login_repository.dart';


abstract class Login {
  final LoginRepository? loginRepository;

  Login({required this.loginRepository});

  Future<AccountEntity>? login(String userName,String password){
   return loginRepository?.getLoginRepository(userName,password);
  }
}