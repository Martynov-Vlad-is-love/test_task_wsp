import 'package:flutter/material.dart';
import 'package:test_task_wsp/model/custom_point.dart';
import 'package:test_task_wsp/model/result.dart';

class ResultController extends ChangeNotifier {
  final List<Result> results = [];

  void addResults(String id, List<Map<String, String>> resultMap, String resultString, List<CustomPoint> rawResult, List<String> fields){
    results.add(Result(resultString, resultMap, rawResult, fields, id));
    notifyListeners();
  }

  // void updateResultMap(List<Map<String, String>> result){
  //   updateResultMap(result) = result;
  //   notifyListeners();
  // }
  // void updateResultPath(String result) {
  //   _resultPath = result;
  //   notifyListeners();
  // }
}