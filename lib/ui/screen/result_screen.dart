import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_wsp/controller/result_controller.dart';
import 'package:test_task_wsp/ui/screen/graphic_path_screen.dart';

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
        body: Container(
          color: Colors.white,
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: Colors.lightBlue,
                  title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  GraphicPathScreen(index: index)));
                    },
                    child: Container(
                      color: Colors.white,
                      width: size.width * 0.9,
                      height: size.height * 0.1,
                      child: Center(
                          child:
                              Text(resultController.results[index].resultPath)),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                    color: Colors.grey,
                  ),
              itemCount: resultController.results.length),
        ));
  }
}
