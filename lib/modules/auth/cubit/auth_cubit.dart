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

  void registerUser({required String email, required String password, required String confirmPassword}) async {
    if (password != confirmPassword) {
      BotToast.showText(text: 'Password and confirm password doesnot matched.');
      emit(AuthState());
    } else {
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
  }
}

class AuthState {
  final UserModel? userModel;

  AuthState({this.userModel});
}
