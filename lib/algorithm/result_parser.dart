import 'package:test_task_wsp/model/custom_point.dart';

class ResultParser {
  static String parseString(List<CustomPoint> list) {
    String parsedString = '';
    for (final element in list) {
      if (element != list.last) {
        parsedString += '(${element.x},${element.y})->';
      } else {
        parsedString += '(${element.x},${element.y})';
      }
    }

    return parsedString;
  }

  static List<Map<String, String>> parsePointsToMap(List<CustomPoint> list) {
    final List<Map<String, String>> parsedMap = [];
    list.forEach((element) {
      final map = {'x': '${element.x}', 'y': '${element.y}'};
      parsedMap.add(map);
    });

    return parsedMap;
  }
}
