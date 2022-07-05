import 'package:flutter/cupertino.dart';
import 'package:hr_solutions/modules/blogs/model/blog_model.dart';

import 'package:hr_solutions/services/base_repo_services.dart';

import '../../../api/api_url.dart';

class BlogRepository {
  Future<BlogModel> Blog(
      {required String description, required String title, required String status, required String id, required String image, required String seo_title, required seo_keyword, required String slug, required createdAt, required String updatedAt}) async {
    final blogData = await brs.postData(
        url: ApiUrl.blogUrl, data: {"id" :id, "title" :title, "status" :status, "description" :description, "image" : image, "seo_title" : seo_title, "slug" : slug, "createdAt" :createdAt, "updatedAt":updatedAt });
    return BlogModel.fromJson(blogData);
  }
}