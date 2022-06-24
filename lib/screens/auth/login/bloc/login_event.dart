part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginUserEvent extends LoginEvent {
  final LoginRequestModel user;
  LoginUserEvent({required this.user});
}
