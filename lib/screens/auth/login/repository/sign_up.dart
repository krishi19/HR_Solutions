import 'package:dio/dio.dart';
import 'package:hr_solutions/screens/auth/login/model/user_model.dart';

import '../../../../api/url.dart';
import '../model/login_request_model.dart';

class LoginRepository {
  loginUser(LoginRequestModel user) async {
    try {
      final Response res = await Dio().post(Url.loginUrl,
          data: {"email": user.email, "password": user.password});
      if (res.statusCode == 200) {
        return User.fromJson(res.data);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}