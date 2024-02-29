import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_wsp/algorithm/breadth_first_search.dart';
import 'package:test_task_wsp/controller/data_controller.dart';
import 'package:test_task_wsp/controller/result_controller.dart';
import 'package:test_task_wsp/ui/screen/graphic_path_screen.dart';
import 'package:test_task_wsp/ui/screen/process_screen.dart';
import 'package:test_task_wsp/ui/widget/bottom_wide_button.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final resultController = context.watch<ResultController>();

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home screen',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 5,
          shadowColor: Colors.black,
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GraphicPathScreen(index: index)));
                  },
                  child: Center(
                      child: Text(resultController.results[index].resultPath)),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: resultController.results.length));
  }
}
