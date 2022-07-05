import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:hr_solutions/modules/information/model/info_model.dart';
import 'package:hr_solutions/utils/print_util.dart';

import '../model/jobs_model.dart';
import '../repository/jobs_repo.dart';



class JobsCubit extends Cubit<JobsState> {
  var jobsModel;

  JobsCubit() : super(JobsState());
  final ar = JobsRepository();

  void Jobs(
      {required int id,
      required String job_title,
      required String slug,
      required String job_type,
      required String job_specification,
      required String salary,
      required String experience,
      required DateTime expirydate,
      required String faculty,
      DateTime? updatedAt,
      required String password}) async {
    BotToast.showLoading();
    try {
      final JobsModel = await ar.getAllJobs(
      
      );
      emit(JobsState(jobsModel:jobsModel));
      BotToast.showText(text: 'jobs for you.');
      BotToast.closeAllLoading();
    } on DioError catch (e) {
      mPrint('error info data: $e');

      BotToast.closeAllLoading();
      BotToast.showText(text: e.message);
    }
  }
}

class JobsState {
  final JobsModel? jobsModel;

JobsState({this.jobsModel});
}