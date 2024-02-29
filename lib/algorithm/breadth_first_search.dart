import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:test_task_wsp/model/custom_point.dart';
class BreadthFirstSearch extends ChangeNotifier{

  double _progress = 0.0;

  double get progress => _progress;

  void updateProgress(double newProgress) {
    _progress = newProgress;
    notifyListeners();
  }

  List<CustomPoint> findShortestPath(
      CustomPoint start, CustomPoint end, List<String> grid) {

    int probableStepCount = 0;
    grid.forEach((element) {probableStepCount += element.length;});
    int steps = 0;
    double progress = 0.0;
    final List<List<int>> dirs = [
      [1, 1],
      [1, -1],
      [-1, 1],
      [-1, -1],
      [0, 1],
      [0, -1],
      [1, 0],
      [-1, 0],
    ];

    final Queue<CustomPoint> queue = Queue();
    final Map<CustomPoint, CustomPoint> parentMap = {};

    queue.add(start);
    parentMap[start] = start;
    final Set<CustomPoint> visited = {};
    visited.add(start);
    while (queue.isNotEmpty) {
      final current = queue.removeFirst();
      if (current == end) {
        List<CustomPoint> path = [];
        CustomPoint? node = end;
        while (node != start) {
          path.add(node!);
          node = parentMap[node];
        }
        path.add(start);
        path = path.reversed.toList();
        updateProgress(1);
        return path;
      }

      for (final dir in dirs) {
        final nextX = current.x + dir[0];
        final nextY = current.y + dir[1];

        if (nextX >= 0 &&
            nextX < grid.length &&
            nextY >= 0 &&
            nextY < grid[0].length &&
            grid[nextX][nextY] == '.' &&
            !visited.contains(CustomPoint(x: nextX, y: nextY))) {
          final next = CustomPoint(x: nextX, y: nextY);
          queue.add(next);
          visited.add(next);
          parentMap[next] = current;
          steps++;

          progress = steps/probableStepCount;
          if(progress > 1){
            progress = 1;
          }
          updateProgress(progress);
        }
      }
    }

    return [];
  }
}
