class QuizModel {
  final String qusNumber;
  final String question;
  final List<String> answers;
  final String correctAnswer;

  QuizModel({
    required this.qusNumber,
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });
}
