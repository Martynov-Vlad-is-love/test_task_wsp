import 'package:flutter/material.dart';
import 'package:test_task_wsp/model/custom_point.dart';

class FieldParser {
  static List<List<int>> blockedPoints(List<String> fields) {
    List<List<int>> blockedPoints = [];
    for (int firstIterator = 0;
        firstIterator < fields.length;
        firstIterator++) {
      String currentString = fields[firstIterator];
      for (int secondIterator = 0;
          secondIterator < currentString.length;
          secondIterator++) {
        if (currentString[secondIterator] == 'X') {
          blockedPoints.add([secondIterator, firstIterator]);
        }
      }
    }

    return blockedPoints;
  }

  static List<List<int>> wayPoints(List<CustomPoint> rawResult) {
    final List<List<int>> waypoints = [];
    for (var element in rawResult) {
      final point = [element.x, element.y];
      waypoints.add(point);
    }

    return waypoints;
  }

  static Color colorByPoints(List<String> fields,
      List<CustomPoint> rawResult, int? firstPoint, int? secondPoint) {
    final waypoints = wayPoints(rawResult);
    final blocked = blockedPoints(fields);
    Color color = Colors.white;
    for (var element in blocked) {
      if (element[0] == firstPoint && element[1] == secondPoint) {
        color = Colors.black;
      }
    }
    for (var element in waypoints) {
      if (element[0] == firstPoint && element[1] == secondPoint) {
        if (element == waypoints.first) {
          color = const Color(0xFF64FFDA);
        } else if (element == waypoints.last) {
          color = const Color(0xFF009688);
        } else {
          color = const Color(0xFF4CAF50);
        }
      }
    }

    return color;
  }
}
