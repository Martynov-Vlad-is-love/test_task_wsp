import 'package:flutter/cupertino.dart';
import 'package:test_task_wsp/controller/controller.dart';
import 'package:test_task_wsp/model/condition_data.dart';
import 'package:test_task_wsp/model/result.dart';
import 'package:test_task_wsp/repository/data_repository.dart';

class DataController with ChangeNotifier implements Controller {
  final _pointRepository = DataRepository();
  String _api = '';
  @override
  Future<List<ConditionData>> get(String apiPath) async {
    _api = apiPath;
    final data = await _pointRepository.get(_api);
    notifyListeners();
    return data;
  }

  @override
  Future<void> post(List<Result> data) async{
    await _pointRepository.post(data, _api);
    notifyListeners();
  }

}