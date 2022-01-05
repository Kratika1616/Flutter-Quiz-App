import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/python_simple_controller.dart';
import 'package:quiz_app/screens/quiz/python_components/body.dart';



class PythonQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PythonQuestionController _controller = Get.put(PythonQuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: PythonBody(),
    );
  }
}
