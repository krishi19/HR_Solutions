import 'package:bloc/bloc.dart';
import 'package:hr_solutions/screens/auth/login/model/login_request_model.dart';
import 'package:hr_solutions/screens/auth/login/model/user_model.dart';
import 'package:meta/meta.dart';

import '../repository/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginUserEvent>((event, emit) async {
      emit(LoginLoadingState());
      print(event.user.email);
      try {
        final User response = LoginRepository().loginUser(event.user);

        emit(LoginSuccess(user: response));
      } catch (e) {
        emit(LoginFailure());
      }
    });
  }
}
