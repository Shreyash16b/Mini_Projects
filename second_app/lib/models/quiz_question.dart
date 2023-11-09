class QuizQuestion {
  const QuizQuestion(this.text,this.answers);

  final String text;
  final List<String> answers; 

  List getShuffledAnswers(){
    final shuffledanswers = List.of(answers);
    shuffledanswers.shuffle();
    return shuffledanswers;
  }
}