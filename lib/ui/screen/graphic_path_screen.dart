import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_wsp/controller/result_controller.dart';

class GraphicPathScreen extends StatelessWidget {
  final int index;

  const GraphicPathScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final resultController = context.watch<ResultController>();
    final fields = resultController.results[index].fields;
    int maxLine = 0;
    fields.forEach((element) {
      if (element.length > maxLine) {
        maxLine = element.length;
      }
    });
    Map<int, List<int>> convertedFields = {};

    for (int iterator = 0; iterator < fields.length; iterator++) {
      for(int secondIterator = 0; secondIterator < fields[iterator].length; secondIterator++){
        convertedFields[iterator] = [iterator,secondIterator] ;
      }
    }

    final rawResult = resultController.results[index].rawResult;
    final containerSize = maxLine/size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details screen',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: fields[0].length,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3),
            itemBuilder: (BuildContext context, int index) {
              final firstPoint = convertedFields[index]?[0];
              final secondPoint = convertedFields[index]?[1];
              final textPoint = '($firstPoint.$secondPoint)';
      
      
              Color curColor;
              //if(firstPoint == rawResult.)
      
              return Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Center(child: Text(textPoint)),

              );
            }),
      ),
    );
  }
}
