import 'package:test_task_wsp/model/result.dart';

abstract class Controller<T>{
  Future<List<T>> get(String apiPath);
  Future<void> post(List<Result> data);
}