import 'package:flutter/material.dart';
import 'package:test_task_wsp/model/custom_point.dart';

class Result{

  final String resultPath;
  final List<Map<String, String>> resultMap;
  final List<CustomPoint> rawResult;
  final List<String> fields;
  const Result(this.resultPath, this.resultMap, this.rawResult, this.fields);
  // String _resultPath = '';
  //
  // String get result => _resultPath;
  //
  // List<Map<String, String>>  _resultMap = [];
  //
  // List<Map<String, String>>  get resultMap => _resultMap;
  //
  // final List<Result> _allResults = [];
  //
  // List<Result> get allResults => _allResults;
  //
  // void addResult(Result result){
  //   _allResults.add(result);
  // }
  //
  // void updateResultMap(List<Map<String, String>> result){
  //   _resultMap = result;
  // }
  // void updateResultPath(String result) {
  //   _resultPath = result;
  // }
}