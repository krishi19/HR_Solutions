import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:hr_solutions/utils/print_util.dart';

import '../model/user_model.dart';
import '../repository/auth_repository.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());
  final ar = AuthRepository();

  void loginUser({required String email, required String password}) async {
    BotToast.showLoading();
    try {
      final userModel = await ar.loginUser(email: email, password: password);
      emit(AuthState(userModel: userModel));
      BotToast.showText(text: 'Login successful.');
      BotToast.closeAllLoading();
    } on DioError catch (e) {
      mPrint('error login login: $e');

      BotToast.closeAllLoading();
      BotToast.showText(text: e.message);
    }
  }

  Future<void> signUpUser(
      {required String email,
      required String password,
      required String confirmPassword}) async {
    if (password != confirmPassword) {
      BotToast.showText(text: 'Password and confirm password doesnot matched.');
      emit(AuthState());
    } else {
      BotToast.showLoading();
      try {
        await ar.signUpUser(
            email: email, password: password, confirmpassword: confirmPassword,);
        BotToast.showText(text: 'User registered successfully, thank you.');
        BotToast.closeAllLoading();
        emit(AuthState(
          isRegister: true,
        ));
      } on DioError catch (e) {
        mPrint('error on register: $e');
        BotToast.showText(text: 'Error in register!');

        BotToast.closeAllLoading();
        emit(AuthState());
      }
    }
  }
}

class AuthState {
  final UserModel? userModel;
  final bool isRegister;

  AuthState({this.userModel, this.isRegister = false});
}
