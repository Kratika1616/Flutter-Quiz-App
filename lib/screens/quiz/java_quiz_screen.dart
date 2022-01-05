import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/java_simple_controller.dart';
import 'package:quiz_app/screens/quiz/java_components/body.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';


class JavaQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    JavaQuestionController _controller = Get.put(JavaQuestionController());
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
      body: JavaBody(),
    );
  }
}
