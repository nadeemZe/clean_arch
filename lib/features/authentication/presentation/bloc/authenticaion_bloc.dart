

import 'package:clean_arch_app/features/authentication/domain/use_cases/login.dart';
import 'package:clean_arch_app/features/authentication/presentation/bloc/authentication_event.dart';
import 'package:clean_arch_app/features/authentication/presentation/bloc/authentication_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent,AuthenticationState>{
  Login login;
  AuthenticationBloc({required this.login}) : super(Loading()) {
    on<AuthenticationEvent>((event, emit) {

    });
  }
}