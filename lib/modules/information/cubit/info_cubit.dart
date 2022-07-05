import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:hr_solutions/modules/information/model/info_model.dart';
import 'package:hr_solutions/utils/print_util.dart';

import '../model/info_model.dart';
import '../repository/info_repo.dart';

class InfoCubit extends Cubit<InfoState> {
  InfoCubit() : super(InfoState());
  final ar = InfoRepository();

  void Info(
      {required String id,
      required String image,
      required String description,
      required String seo_title,
      required String seo_keyword,
      required String_description,
      required String slug,
      required DateTime createdAt,
      DateTime? updatedAt,
      required String password}) async {
    BotToast.showLoading();
    try {
      final InfoModel = await ar.Information(
        id: 'id',
        createdAt: null,
        seo_keyword: null,
        seo_title: '',
        image: '',
        updatedAt: '',
        description: '',
        slug: '',
      );
      emit(InfoState(infoModel: InfoModel));
      BotToast.showText(text: 'information successful.');
      BotToast.closeAllLoading();
    } on DioError catch (e) {
      mPrint('error info data: $e');

      BotToast.closeAllLoading();
      BotToast.showText(text: e.message);
    }
  }
}

class InfoState {
  final InfoModel? infoModel;

  InfoState({this.infoModel});
}
