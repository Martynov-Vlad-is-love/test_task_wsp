import 'package:flutter/cupertino.dart';
import 'package:test_task_wsp/controller/controller.dart';
import 'package:test_task_wsp/model/condition_data.dart';
import 'package:test_task_wsp/model/result.dart';
import 'package:test_task_wsp/repository/data_repository.dart';

class DataController with ChangeNotifier implements Controller {
  final _pointRepository = DataRepository();

  @override
  Future<List<ConditionData>> get(String apiPath) async {
    final data = await _pointRepository.get(apiPath);
    notifyListeners();
    return data;
  }

  @override
  Future<void> post(dynamic data, String apiPath) async{
    await _pointRepository.post(data, apiPath);
    notifyListeners();
    ///TODO Сделай 2 страницы, а потом возвращайся сюда :)
  }

}