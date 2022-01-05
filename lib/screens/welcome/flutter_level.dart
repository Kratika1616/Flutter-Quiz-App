import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/welcome/reg.dart';
import 'package:quiz_app/screens/welcome/subjects.dart';



class Flevel extends StatefulWidget {
  @override
  _FlevelState createState() => _FlevelState();
}

class _FlevelState extends State<Flevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: Text('Home Chat'),
      //),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/icons/bg.png'),fit: BoxFit.fill),
        ),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 100.0,
                    child: Image.asset("assets/icons/quiz.png")
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                ),
                Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: MaterialButton(
                    minWidth: 500,
                    height: 20,
                    onPressed: () { null; },
                    child: Text('Select the Level of Questions'),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: MaterialButton(
                    minWidth: 200,
                    height: 20,
                    child: Text('Simple'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QuizScreen()));
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: MaterialButton(
                    minWidth: 200,
                    height: 40,
                    child: Text('Medium'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QuizScreen()));
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: MaterialButton(
                    minWidth: 200,
                    height: 20,
                    child: Text('Hard'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QuizScreen()));
                    },
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
