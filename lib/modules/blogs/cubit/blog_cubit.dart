import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:hr_solutions/utils/print_util.dart';

import '../model/blog_model.dart';
import '../repository/blogs_repository.dart';



class BlogCubit extends Cubit<BlogState> {
  BlogCubit() : super(BlogState());
  final ar = BlogRepository();

  void Info(
      {required String id,
      required String image,
      required String title,
      required String description,
      required String seo_title,
      required String seo_keyword,
      required String_description,
      required String slug,
      required String status,
      required DateTime createdAt,
      DateTime? updatedAt,
      required String password}) async {
    BotToast.showLoading();
    try {
      final BlogModel = await ar.Blog(
        id: 'id',
        createdAt: null,
        seo_keyword: null,
        seo_title: '',
        image: '',
        updatedAt: '',
        description: '',
        slug: '',
         title: '', 
         status: '',
      );
      emit(BlogState(blogModel: BlogModel));
      BotToast.showText(text: 'information successful.');
      BotToast.closeAllLoading();
    } on DioError catch (e) {
      mPrint('error info data: $e');

      BotToast.closeAllLoading();
      BotToast.showText(text: e.message);
    }
  }
}

class BlogState {
  final BlogModel? blogModel;

  BlogState({this.blogModel});
}
