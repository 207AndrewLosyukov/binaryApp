import 'package:bin_options/binarium_colors.dart';
import 'package:bin_options/dependencies.dart';
import 'package:bin_options/reusable/light_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

class CongratsScreen extends StatelessWidget {
  final int countOfCorrect;
  final bool isOpenedFromSwitcher;
  const CongratsScreen({
    required this.countOfCorrect,
    Key? key,
    required this.isOpenedFromSwitcher,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: generateMaterialColor(
        color: const Color(BinariumColors.binariumBackgroundCode),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 65.5 / 812 * MediaQuery.of(context).size.height),
                  child: Center(
                    child: Image.asset(
                      'assets/cuate.png',
                      height: 300 / 812 * MediaQuery.of(context).size.height,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 35 / 812 * MediaQuery.of(context).size.height),
                  child: const Text(
                    "Congrats!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Inter-Bold",
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 15 / 812 * MediaQuery.of(context).size.height),
                  child: Text(
                    "$countOfCorrect/10",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "Inter-ExtraBold",
                      fontWeight: FontWeight.w800,
                      color: Color(BinariumColors.binariumGreenCode),
                      fontSize: 48,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 35 / 812 * MediaQuery.of(context).size.height,
                      left: 65,
                      right: 65),
                  child: const Text(
                    "Very good for a beginner, but you can do better. Come back again and improve the results!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Inter-Medium",
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: isOpenedFromSwitcher
                      ? 0.04 * MediaQuery.of(context).size.height
                      : 0.08 * MediaQuery.of(context).size.height),
              child: BinariumLightBlueButton(
                callback: () => {
                  if (isOpenedFromSwitcher)
                    {
                      Dependencies.instance.writeCountOfAnswers(countOfCorrect),
                      Dependencies.instance.navigator
                          .openTradingExperienceScreen(true, context),
                    }
                  else
                    {
                      Dependencies.instance.navigator.openReviewScreen(),
                      Dependencies.instance.writeCountOfAnswers(countOfCorrect),
                    }
                },
                text: isOpenedFromSwitcher ? 'Play Again' : 'Continue',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(BinariumColors.whiteCode),
                  fontSize: 18,
                  fontFamily: "sfpro_display_bold",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
