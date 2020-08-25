import 'question.dart';
int _questionNumber = 0;

class QuizzMemory {
  List<Question> _questionBank = [
    Question('Cow has  a four legs', false),
    Question('This\'s false', true),
    Question('Beard cam fly', true),
    Question('Are you a cow?', false),
  ];

  String getQues() {
    return _questionBank[_questionNumber].question;
  }

  bool getAns() {
    return _questionBank[_questionNumber].answer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber+=1;
      print( 'Q num is {$_questionNumber)}');
    }
  }
}
