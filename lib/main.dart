import 'package:flutter/material.dart';
import 'package:quizzapp/quiz_memory.dart';

QuizzMemory quizzMemory = QuizzMemory();

void main() => runApp(MaterialApp(title: 'Quizzz', home: QuizHome()));

class QuizHome extends StatefulWidget {
  @override
  _QuizHomeState createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  List<Icon> scoreKeeper = [];

  void checkAns(bool userAns) {
    setState(() {
    bool correctAns = quizzMemory.getAns();
      if (userAns == correctAns) {
        scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
    });
      quizzMemory.nextQuestion();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(title: Center(child: Text('Quizzz'))),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        quizzMemory.getQues(),
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                        textColor: Colors.white,
                        color: Colors.green,
                        onPressed: () {
                            checkAns(true);
                        },
                        child: Text(
                          'True',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  )),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                        textColor: Colors.white,
                        color: Colors.red,
                        onPressed: () {
                          checkAns(false);
                        },
                        child: Text(
                          'False',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  )),
              Row(
                children: scoreKeeper,
              )
            ],
          )),
    );
  }

}
