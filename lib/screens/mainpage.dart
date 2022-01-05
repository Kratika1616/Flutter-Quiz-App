import 'package:flutter/material.dart';
import 'package:quiz_app/screens/welcome/Simple%20Learning.dart';
import 'package:quiz_app/screens/welcome/spacecrafts.dart';
import 'package:quiz_app/screens/welcome/subjects.dart';

import '../customer_sat.dart';



class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                    minWidth: 200,
                    height: 20,
                    child: Text('MCQ'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Subjects()));
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
                    child: Text('Simple Learning'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SimpleLearning()));
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
                    child: Text('ISRO Knowledge Section'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Spacecrafts()));
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
