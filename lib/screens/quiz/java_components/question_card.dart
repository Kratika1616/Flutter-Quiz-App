import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/java_simple_controller.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/Java_Questions.dart';

import '../../../constants.dart';
import 'option.dart';

class JavaQuestionCard extends StatelessWidget {
  const JavaQuestionCard({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final JavaQuestion question;

  @override
  Widget build(BuildContext context) {
    JavaQuestionController _controller = Get.put(JavaQuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => JavaOption(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
