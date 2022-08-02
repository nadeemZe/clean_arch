

import 'package:clean_arch_app/features/authentication/domain/entity/account_entity.dart';

abstract class LoginRepository {
  Future<AccountEntity>getLoginRepository(String userName,String password);
}