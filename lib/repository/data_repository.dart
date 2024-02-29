import 'dart:convert';
import 'package:test_task_wsp/model/condition_data.dart';
import 'package:test_task_wsp/repository/repository.dart';
import 'package:http/http.dart' as http;

class DataRepository implements Repository<ConditionData> {
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
  Future<Map<String, dynamic>> post(ConditionData data, String apiPath) async {
    final response = await http.post(Uri.parse(apiPath));
    Map<String, dynamic> data = {};
    if(response.statusCode == 200){
      data = jsonDecode(response.body) as Map<String, dynamic>;
    }
    return data;
  }
}
