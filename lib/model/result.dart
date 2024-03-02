import 'package:test_task_wsp/model/custom_point.dart';

class Result{
  final String id;
  final String resultPath;
  final List<Map<String, String>> resultMap;
  final List<CustomPoint> rawResult;
  final List<String> fields;
  const Result(this.resultPath, this.resultMap, this.rawResult, this.fields, this.id);

  Map<String, dynamic> toJson(){

    return {
      'id': id,
      'result': {
        'steps': [
          for (final element in rawResult)
            element.toJson()
        ],
        'path': resultPath
      }
    };
  }
}