import 'package:flutter/cupertino.dart';
import 'package:hr_solutions/modules/auth/cubit/auth_cubit.dart';
import 'package:hr_solutions/modules/auth/model/user_model.dart';
import 'package:hr_solutions/modules/information/model/info_model.dart';
import 'package:hr_solutions/services/base_repo_services.dart';

import '../../../api/api_url.dart';

class InfoRepository {
  Future<InfoModel> Information(
      {required String description, required String id, required String image, required String seo_title, required seo_keyword, required String slug, required createdAt, required String updatedAt}) async {
    final infoData = await brs.postData(
        url: ApiUrl.infoUrl, data: {"id" :id, "description" : description, "image" : image, "seo_title" : seo_title, "slug" : slug, "createdAt" :createdAt, "updatedAt":updatedAt });
    return InfoModel.fromJson(infoData);
  }
}
