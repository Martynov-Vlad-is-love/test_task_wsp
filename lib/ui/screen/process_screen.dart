import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:test_task_wsp/algorithm/breadth_first_search.dart';
import 'package:test_task_wsp/controller/data_controller.dart';
import 'package:test_task_wsp/controller/result_controller.dart';
import 'package:test_task_wsp/model/result.dart';
import 'package:test_task_wsp/ui/screen/result_screen.dart';
import 'package:test_task_wsp/ui/widget/bottom_wide_button.dart';

class ProcessScreen extends StatelessWidget {
  const ProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pathfinder = context.watch<BreadthFirstSearch>();
    final dataController = context.watch<DataController>();
    final resultController = context.watch<ResultController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Process screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Please, wait for calculation',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: CircularPercentIndicator(
                        radius: 70,
                        lineWidth: 10,
                        percent: pathfinder.progress,
                        center: Text(
                          '${pathfinder.progress * 100}%',
                          style: const TextStyle(fontSize: 30),
                        ),
                        progressColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  BottomWideButton(
                      text: 'Send results to server',
                      size: size,
                      onPressed: () async{
                        //await dataController.post();
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                            const ResultScreen(),
                          ),
                        );
                      }),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
