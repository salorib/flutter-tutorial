class Questions {

  String question;
  String answer;
  List<String> options;

  Questions(this.question, this.answer, this.options);

  String getQuestion(){
    return question;
  }

  String getAnswer(){
    return answer;
  }

  List<String> getOptions(){
    return options;
  }

}