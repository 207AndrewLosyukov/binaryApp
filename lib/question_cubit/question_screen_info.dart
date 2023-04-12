class QuestionScreenInfo {
  final int questionNumber;
  final String question;
  final List<String> potentialAnswers;
  final int correctAnswerNumb;
  final String? assetString;

  QuestionScreenInfo(
      {required this.questionNumber,
      required this.question,
      required this.potentialAnswers,
      required this.correctAnswerNumb,
      this.assetString});
}
