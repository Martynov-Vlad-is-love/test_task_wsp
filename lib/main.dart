import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_wsp/algorithm/breadth_first_search.dart';
import 'package:test_task_wsp/controller/data_controller.dart';
import 'package:test_task_wsp/controller/result_controller.dart';
import 'package:test_task_wsp/ui/screen/home_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DataController()),
      ChangeNotifierProvider(create: (__) => BreadthFirstSearch()),
      ChangeNotifierProvider(create: (___) => ResultController())
    ],
    child: const HomeScreen(),
  ));
}
