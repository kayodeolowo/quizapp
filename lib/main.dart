import 'package:flutter/material.dart';

void main() {
  runApp(MyQuiz());
}

class MyQuiz extends StatelessWidget {
  const MyQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz Questions",
          ),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Quizpage(),
        ),
      ),
    );
  }
}

class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "This is where the question will go",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                'false',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children: const <Widget>[
            Icon(
              Icons.check,
              color: Colors.green,
              size: 30,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          ],
        )
      ],
    );
  }
}
