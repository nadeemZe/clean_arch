

import 'package:clean_arch_app/features/authentication/domain/entity/account_entity.dart';

abstract class AuthenticationState{}

class Loading extends AuthenticationState{}

class Error extends AuthenticationState{}

class AuthenticationDone extends AuthenticationState{
  AccountEntity accountEntity;
  AuthenticationDone({required this.accountEntity});
  String get token => accountEntity.userToken;
}