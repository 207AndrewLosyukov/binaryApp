import 'package:bin_options/binarium_colors.dart';
import 'package:bin_options/question_cubit/question_screen_info.dart';

abstract class QuestionsState {
  static int countOfCorrectAnswer = 0;
  final int? numbOfTapped;
  final QuestionScreenInfo questionInfo;
  final int colorToHiglite;

  QuestionsState({
    this.colorToHiglite = BinariumColors.binariumLightGreyCode,
    required this.numbOfTapped,
    required this.questionInfo,
  });
}

class NoAnswerState extends QuestionsState {
  NoAnswerState(
      {super.numbOfTapped,
      required super.questionInfo,
      super.colorToHiglite = BinariumColors.binariumLightGreyCode});
}

class IncorrectAnswerState extends QuestionsState {
  IncorrectAnswerState(
      {required super.numbOfTapped,
      required super.questionInfo,
      required super.colorToHiglite});
}

class CorrectAnswerState extends QuestionsState {
  CorrectAnswerState(
      {required super.numbOfTapped,
      required super.questionInfo,
      required super.colorToHiglite});
}
