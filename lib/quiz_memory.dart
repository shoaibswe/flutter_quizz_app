import 'question.dart';

int _questionNumber = 0;

class QuizzMemory {
  List<Question> _questionBank = [
    Question('Cow has a four legs', false),
    Question('This\'s false', true),
    Question('Beard can fly', true),
    Question('Are you a cow?', false),
    Question('Android Studio is a Mobile app development language', false),
    Question('Flutter is a framework', true),
    Question('MySQL is a language', false),
    Question('SQL is a language', true),
  ];

  String getQues() {
    return _questionNumber.toString() +
        ' ' +
        _questionBank[_questionNumber].question;
  }

  bool getAns() {
    return _questionBank[_questionNumber].answer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber += 1;
      // print( 'Debugging: Q num is {$_questionNumber}');
    }
  }

  bool quizFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void restartQuiz() {
    _questionNumber = -1;
    // print('QNum: {$_questionNumber}');
  }
}
