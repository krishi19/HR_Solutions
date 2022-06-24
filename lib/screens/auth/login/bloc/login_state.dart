part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {
  User user;
  LoginSuccess({required this.user});
}

class LoginFailure extends LoginState {}

class LoginLoadingState extends LoginState {}
