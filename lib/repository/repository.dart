import 'package:test_task_wsp/model/result.dart';

abstract class Repository {
  Future<List> get(String apiPath);

  Future<void> post(List<Result> data, String apiPath);
}
