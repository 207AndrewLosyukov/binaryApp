import 'package:bin_options/binarium_colors.dart';
import 'package:bin_options/dependencies.dart';
import 'package:bin_options/question_cubit/question_list.dart';
import 'package:bin_options/question_cubit/questions_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionsCubit extends Cubit<QuestionsState> {
  int _currQuestion = 0;
  final int _green = BinariumColors.binariumGreenCode;
  final int _red = BinariumColors.binariumRedCode;
  final isOpenedFromSwitcher;

  QuestionsCubit(this.isOpenedFromSwitcher)
      : super(NoAnswerState(questionInfo: questions[0]));

  void answerQuestion(numbOfAnswer) {
    if (state is NoAnswerState) {
      if (numbOfAnswer == questions[_currQuestion].correctAnswerNumb) {
        QuestionsState.countOfCorrectAnswer++;
        emit(CorrectAnswerState(
            colorToHiglite: _green,
            numbOfTapped: numbOfAnswer,
            questionInfo: state.questionInfo));
      } else {
        emit(IncorrectAnswerState(
            colorToHiglite: _red,
            numbOfTapped: numbOfAnswer,
            questionInfo: state.questionInfo));
      }
    }
  }

  void getNextQuestion(context) {
    if (_currQuestion < 9) {
      emit(NoAnswerState(questionInfo: questions[++_currQuestion]));
    } else if (_currQuestion == 9 && !isOpenedFromSwitcher) {
      Dependencies.instance.navigator
          .openCongratsScreen(QuestionsState.countOfCorrectAnswer, false, context);
    } else if (_currQuestion == 9 && isOpenedFromSwitcher) {
      Dependencies.instance.navigator
          .openCongratsScreen(QuestionsState.countOfCorrectAnswer, true, context);
    }
  }
}
