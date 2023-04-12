import 'package:bin_options/binarium_colors.dart';
import 'package:bin_options/question_cubit/question_cubit.dart';
import 'package:bin_options/question_cubit/questions_state.dart';
import 'package:bin_options/reusable/answer_button.dart';
import 'package:bin_options/reusable/light_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_color_generator/material_color_generator.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
  });

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late final QuestionsCubit cubit;
  @override
  void initState() {
    cubit = BlocProvider.of<QuestionsCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionsCubit, QuestionsState>(
      builder: (context, state) {
        int color = state.colorToHiglite;
        return Scaffold(
          backgroundColor: generateMaterialColor(
            color: const Color(BinariumColors.binariumBackgroundCode),
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0.1 * MediaQuery.of(context).size.height,
                                left: 39,
                                right: 39),
                            child: Text(
                              "Question ${state.questionInfo.questionNumber}/10",
                              textAlign: TextAlign.center,
                              maxLines: 10,
                              style: const TextStyle(
                                fontFamily: "Inter-SemiBold",
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top:
                                  19 / 812 * MediaQuery.of(context).size.height,
                              left: 25,
                              right: 25,
                            ),
                            child: Text(
                              state.questionInfo.question,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: "Inter-Medium",
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // здесь картинка и две кнопки
                    Expanded(
                      child: Column(
                        children: [
                          if (state.questionInfo.assetString != null)
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 30.0 /
                                      812 *
                                      MediaQuery.of(context).size.width,
                                  right: 30.0 /
                                      812 *
                                      MediaQuery.of(context).size.width,
                                  bottom: 20.0 /
                                      812 *
                                      MediaQuery.of(context).size.height,
                                ),
                                child: Image.asset(
                                  '${state.questionInfo.assetString}',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 19.0 /
                                          812 *
                                          MediaQuery.of(context).size.height),
                                  child: GestureDetector(
                                    onTap: () => cubit.answerQuestion(
                                      0,
                                    ),
                                    child: BinariumAnswerChip(
                                      text: state
                                          .questionInfo.potentialAnswers[0],
                                      answerChar: 'A',
                                      color: Color(
                                        state.numbOfTapped == 0
                                            ? color
                                            : BinariumColors
                                                .binariumLightGreyCode,
                                      ),
                                      textColor: Color(
                                        state.numbOfTapped == 0
                                            ? BinariumColors.whiteCode
                                            : BinariumColors.binariumBlackCode,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 19.0 /
                                          812 *
                                          MediaQuery.of(context).size.height),
                                  child: GestureDetector(
                                    onTap: () => cubit.answerQuestion(
                                      1,
                                    ),
                                    child: BinariumAnswerChip(
                                      text: state
                                          .questionInfo.potentialAnswers[1],
                                      answerChar: 'B',
                                      color: Color(
                                        state.numbOfTapped == 1
                                            ? color
                                            : BinariumColors
                                                .binariumLightGreyCode,
                                      ),
                                      textColor: Color(
                                        state.numbOfTapped == 1
                                            ? BinariumColors.whiteCode
                                            : BinariumColors.binariumBlackCode,
                                      ),
                                    ),
                                  ),
                                ),
                                if (state.questionInfo.potentialAnswers.length >
                                    2)
                                  GestureDetector(
                                    onTap: () => cubit.answerQuestion(
                                      2,
                                    ),
                                    child: BinariumAnswerChip(
                                      text: state
                                          .questionInfo.potentialAnswers[2],
                                      answerChar: 'C',
                                      color: Color(
                                        state.numbOfTapped == 2
                                            ? color
                                            : BinariumColors
                                                .binariumLightGreyCode,
                                      ),
                                      textColor: Color(
                                        state.numbOfTapped == 2
                                            ? BinariumColors.whiteCode
                                            : BinariumColors.binariumBlackCode,
                                      ),
                                    ),
                                  ),
                                const Spacer()
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: cubit.isOpenedFromSwitcher
                      ? EdgeInsets.only(
                          bottom: 0.04 * MediaQuery.of(context).size.height)
                      : EdgeInsets.only(
                          bottom: 0.08 * MediaQuery.of(context).size.height),
                  child: BinariumLightBlueButton(
                    callback: () => {
                      cubit.getNextQuestion(),
                    },
                    text: 'Continue',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(BinariumColors.whiteCode),
                      fontSize: 18,
                      fontFamily: "sfpro_display_bold",
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
