import 'package:hr_solutions/modules/jobs/model/jobs_model.dart';
import 'package:hr_solutions/services/base_repo_services.dart';

import '../../../api/api_url.dart';

class JobsRepository {
  Future<List<JobsModel>> getAllJobs() async {
    final token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZmYwNjU5ZWY2ZTE5ODcwNjVhYTliZTkwYTkwZGM2YTgxYjNmNTNkNDIyZjQyMzlmOTcxNTgzYzcwMmMzZDgzNmEyMWY3ZTVkMmFlM2IwYzIiLCJpYXQiOjE2NTcwMTIyMjYuMTQ3OTUxLCJuYmYiOjE2NTcwMTIyMjYuMTQ3OTU2LCJleHAiOjE2ODg1NDgyMjYuMTI2NDc5LCJzdWIiOiI0Iiwic2NvcGVzIjpbXX0.OFPw1_TFcJgAJTJQ3CJmy_ZAYhwlGaWk79Lzc9MxNSmaDh5rR61IjcKefgKYGKpJHHyscbYI99xeP94idsQ2ojJUVw8AARoa5navUW6zfvdT_UhV17xyL09WYLybqD_nI01LpkKaWqKv-xOxavi-0yqcZPz_T8rUQ8VixeRlg5JFeCTUqKP4NOZRrobsaorfyBD18kiNcTSOGN9SylNXul0_-lWDI8IQ9KrcnERiDOWSpu3lavki0zBRPCpoPq7dr6mgCiDYLwfe1l2LkHuPyof1aYwIaxfwJo8d5E-mpQQNGFevbU1BhGl2UCar9QKtJCapzNPn8TUoKAzR4hXBA7rE7uOciP9Y_EcwsprmOlO4Cc3ofYKKAAUMcq6A6c1laJtUEy00wWgU69BgspRYRFhFT3gq5P7poarqbU5JKv81b9LLDBsD_E57qefmmaKIToAo4J2jbGkuuqWptopGSkbQfgPrXDiWHf8cxkcYLFuPm4lZ3jJZ9ozzQcgCy5HuhQH-HtqUJB6RSa1F1bn0aEWOrzo70cLTVFZWN71x2LshoDxPBTiApdLf7_QGazEzEVOytTvaPz8rw_MF8R_oSVo7in4ipjlNf8xpUhY5fruBZQkMBJWHrAVRiPbJX5nAvHSuX56HrXnwetO5WP_YT-2YHX8OiNuIjbo9-YL_nf4";
    final jobData = await brs.getData(
      url: ApiUrl.jobUrl,
      token: token,
    );
    final jobs = jobData['jobs'];
    final jobModelList = jobs
        .map((job) {
          return JobsModel.fromJson(job);
        })
        .toList()
        .cast<JobsModel>();
    return jobModelList;
  }
}
