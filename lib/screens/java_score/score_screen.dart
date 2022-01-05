import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';

import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/controllers/java_simple_controller.dart';

import '../mainpage.dart';

class JavaScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    JavaQuestionController _qnController = Get.put(JavaQuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 1),
              Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                elevation: 10,
                child: MaterialButton(
                    minWidth: 200,
                    height: 40,
                    child: Text('Logout'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainPage()));
                    }
                ),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
