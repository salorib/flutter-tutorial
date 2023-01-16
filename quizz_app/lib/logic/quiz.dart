import 'questions.dart';

class Quiz{

  int _index = 0;
  int _score = 0;
  bool _isFinished = false;
  String _title = 'Test Title';

  List<Questions> _question = [
    Questions('question 1', 'option 1', ['option 1', 'option 2', 'option 3']),
    Questions('question 2', 'option 2', ['option 1', 'option 2', 'option 3']),
    Questions('question 3', 'option 3', ['option 1', 'option 2', 'option 3'])
  ];

  String getQuizTitle(){
    return _title;
  }

  int getIndex(){
    return _index;
  }

  int getScore(){
    return _score;
  }

  bool isQuizFinished(){
    return _isFinished;
  }

  void nextQuestion(){
    if(_index < _question.length -1){
      _index++;
    }else{
      _isFinished = true;
    }
  }

  String getQuestion(){
    return _question[_index].getQuestion();
  }

  List<String> getOptions(){
    return _question[_index].getOptions();
  }

  int getTotalQuestions(){
    return _question.length;
  }

  bool checkAnswer(String theAnswer){
    if(_question[_index].getAnswer() == theAnswer){
      return true;
    }else{
      return false;
    }
  }


}