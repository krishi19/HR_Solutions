import 'package:hr_solutions/modules/auth/model/user_model.dart';
import 'package:hr_solutions/services/base_repo_services.dart';

import '../../../api/api_url.dart';

class AuthRepository {
  Future<UserModel> loginUser({required String email, required String password}) async {
    final loginData = await brs.postData(url: ApiUrl.loginUrl, data: {"email": email, "password": password});
    return UserModel.fromJson(loginData);
  }
}
