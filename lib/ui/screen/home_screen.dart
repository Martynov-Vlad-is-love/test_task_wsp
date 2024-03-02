import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_wsp/algorithm/breadth_first_search.dart';
import 'package:test_task_wsp/algorithm/result_parser.dart';
import 'package:test_task_wsp/controller/data_controller.dart';
import 'package:test_task_wsp/controller/result_controller.dart';
import 'package:test_task_wsp/model/condition_data.dart';
import 'package:test_task_wsp/ui/screen/process_screen.dart';
import 'package:test_task_wsp/ui/widget/bottom_wide_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  String _apiUrl = '';
  bool _isValid = false;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final dataController = context.watch<DataController>();
    final pathfinder = context.watch<BreadthFirstSearch>();
    final resultController = context.watch<ResultController>();

    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(),
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blue)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home screen',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 5,
          shadowColor: Colors.black,
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Container(
              width: size.width,
              height: size.height,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Set valid API base URL in order to continue',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 15.0),
                                child: Icon(Icons.arrow_forward),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: _textController,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: BottomWideButton(
                      text: 'Start counting process',
                      size: size,
                      onPressed: () async {
                        String api = _textController.text;
                        final isValid = _apiValidator(api, context);
                        if (isValid) {
                          pathfinder.updateProgress(0.0);
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const ProcessScreen(),
                            ),
                          );
                          final conditionData = await dataController.get(api);
                          _createResult(
                              conditionData, resultController, pathfinder);
                        }
                      },
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _createResult(List<ConditionData> data,
      ResultController resultController, BreadthFirstSearch pathfinder) {
    for (final element in data) {
      final id = element.id;
      final rawResult = pathfinder.findShortestPath(
          element.start, element.end, element.field);

      final resultString = ResultParser.parseString(rawResult);
      final resultMap = ResultParser.parsePointsToMap(rawResult);
      resultController.addResults(
          id, resultMap, resultString, rawResult, element.field);
    }
  }

  bool _apiValidator(String apiKey, BuildContext context) {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        setState(() {
          _apiUrl = _textController.text;
          _isValid = Uri.parse(_apiUrl).isAbsolute;
        });
        if (_isValid) {
          return true;
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please enter a valid URL'),
            ),
          );
        }
      }
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Please enter a valid URL'),
      ),
    );
    return false;
  }
}
