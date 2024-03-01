import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_wsp/algorithm/field_parser.dart';
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
                TextStyle textColor = const TextStyle(color: Colors.black);
                final color = FieldParser.colorByPoints(
                    fields, result.rawResult, firstPoint, secondPoint);
                if (color == Colors.black) {
                  textColor = const TextStyle(color: Colors.white);
                }
                return Container(
                  width: 100,
                  height: 100,
                  color: color,
                  child: Center(
                      child: Text(
                    textPoint,
                    style: textColor,
                  )),
                );
              }),
        ),
        Text(
          resultController.results[index].resultPath,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}
