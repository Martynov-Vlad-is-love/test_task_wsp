import 'dart:convert';
import 'package:test_task_wsp/model/condition_data.dart';
import 'package:test_task_wsp/model/result.dart';
import 'package:test_task_wsp/repository/repository.dart';
import 'package:http/http.dart' as http;

class DataRepository implements Repository {
  @override
  Future<List<ConditionData>> get(String apiPath) async {
    final List<ConditionData> result = [];
    final response = await http.get(Uri.parse(apiPath));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as Map<String, dynamic>;
      final dataList = jsonData['data'] as List<dynamic>;

      dataList.forEach((element) {
        result.add(ConditionData.fromJson(element));
      });
    }

    ///TODO massage that there is no any data.
    return result;
  }

  @override
  Future<void> post(List<Result> data, String apiPath) async {
    final result = [];
    for(final element in data){
      result.add(element.toJson());
    }
    final encoded = jsonEncode(result);
    print(encoded);
    final header = {
      'accept': 'application/json',
      'Content-type': 'application/json',
    };
    final response = await http.post(Uri.parse(apiPath),body: jsonEncode(result), headers: header);
    if(response.statusCode != 200){
      print(response.body);
      throw Exception('Status code ${response.statusCode}');

      //data = jsonDecode(response.body) as Map<String, dynamic>;
    }
  }
}
