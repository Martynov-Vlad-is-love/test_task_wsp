import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_wsp/controller/result_controller.dart';

class GraphicPathScreen extends StatelessWidget {
  final int index;

  const GraphicPathScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final resultController = context.watch<ResultController>();
    final fields = resultController.results[index].fields;
    int maxLine = 0;
    fields.forEach((element) {
      if (element.length > maxLine) {
        maxLine = element.length;
      }
    });
    Map<int, List<int>> convertedFields = {};
    int position = 0;
    for (int iterator = 0; iterator < fields.length; iterator++) {
      for (int secondIterator = 0;
          secondIterator < fields[iterator].length;
          secondIterator++) {
        final map = {
          position: [secondIterator, iterator]
        };
        convertedFields.addAll(map);
        position++;
      }
    }

    final result = resultController.results[index];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details screen',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: Column(children: [
        Expanded(
          child: GridView.builder(
              itemCount: fields[0].length * fields[0].length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: fields[0].length,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3),
              itemBuilder: (BuildContext context, int index) {
                final firstPoint = convertedFields[index]?[0];
                final secondPoint = convertedFields[index]?[1];
                final textPoint = '($firstPoint.$secondPoint)';

                List<List<int>> waypoints = [];
                result.rawResult.forEach((element) {
                  final point = [element.x, element.y];
                  waypoints.add(point);
                });

                final List<List<int>> blockedPoints = [];

                for (int firstIterator = 0;
                    firstIterator < result.fields.length;
                    firstIterator++) {
                  String currentString = result.fields[firstIterator];
                  for (int secondIterator = 0;
                      secondIterator < currentString.length;
                      secondIterator++) {
                    if (currentString[secondIterator] == 'X') {
                      blockedPoints.add([secondIterator, firstIterator]);
                    }
                  }
                }

                Color curColor = Colors.white;
                TextStyle textColor = const TextStyle(color: Colors.black);
                waypoints.forEach((element) {
                  if (element[0] == firstPoint && element[1] == secondPoint) {
                    if (element == waypoints.first) {
                      curColor = const Color(0xFF64FFDA);
                    } else if (element == waypoints.last) {
                      curColor = const Color(0xFF009688);
                    } else {
                      curColor = const Color(0xFF4CAF50);
                    }
                  }
                });
                blockedPoints.forEach((element) {
                  if (element[0] == firstPoint && element[1] == secondPoint) {
                    curColor = Colors.black;
                    textColor = const TextStyle(color: Colors.white);
                  }
                });

                return Container(
                  width: 100,
                  height: 100,
                  color: curColor,
                  child: Center(
                      child: Text(
                    textPoint,
                    style: textColor,
                  )),
                );
              }),
        ),
        Expanded(
            flex: 1,
            child: Text(
              resultController.results[index].resultPath,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )),
      ]),
    );
  }
}
