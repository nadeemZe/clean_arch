

abstract class AuthenticationEvent{}

class LoginEvent extends AuthenticationEvent{
  String userName;
  String password;
  LoginEvent({required this.userName,required this.password});

}