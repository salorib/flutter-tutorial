import 'package:flutter_quizzler/question.dart';

class Quizz{

  int _currentQuestion = 0;
  int _totalScore = 0;
  bool _isFinished = false;

  List<Question> _questions = [
    Question(question: 'Harry Styles has polythelia (four nipples)', answer: true),
    Question(question: 'Gemma Collins was adopted', answer: false),
    Question(question: 'Michael Jackson had a prosthesis nose', answer: false),
    Question(question: 'Selena Gomez collects rare crystals and has over 200 items in her collection ', answer: false),
    Question(question: 'Tom Hanks has a collection of over 100 typewriters', answer: true)
  ];

  void nextQuestion(){
    if(_currentQuestion < _questions.length - 1){
      _currentQuestion++;
    }else{
      _isFinished = true;
    }
  }

  String getQuestion(){
    return _questions[_currentQuestion].question;
  }

  bool getAnswer(){
    return _questions[_currentQuestion].answer;
  }

  // TODO: is finished function
  bool isFinished(){
    return _isFinished;
  }

  // TODO: reset function
  void resetQuizz(){
    _currentQuestion = 0;
    _totalScore = 0;
    _isFinished = false;
  }

  int getTotalQuestions(){
    return _questions.length;
  }

  int getTotalScore(){
    return _totalScore;
  }

  int getCurrentQuestionNumber(){
    return _currentQuestion;
  }

  void countAnswers(){
    _totalScore++;
  }



}