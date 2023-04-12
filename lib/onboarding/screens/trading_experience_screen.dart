import 'package:bin_options/binarium_colors.dart';
import 'package:bin_options/dependencies.dart';
import 'package:bin_options/reusable/answer_button.dart';
import 'package:bin_options/reusable/light_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

class TradingExperience extends StatefulWidget {
  BuildContext? contextOfTabBar;
  TradingExperience(this.contextOfTabBar, {Key? key, required this.isOpenedFromSwitcher})
      : super(key: key);
  bool isAmateur = true;
  final isOpenedFromSwitcher;

  @override
  State<TradingExperience> createState() => _TradingExperienceState();
}

class _TradingExperienceState extends State<TradingExperience> {
  late double height;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: generateMaterialColor(
        color: const Color(BinariumColors.binariumBackgroundCode),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 0.1 * MediaQuery.of(context).size.height,
                left: 74,
                right: 74),
            child: const Text(
              "What is your\n trading experience?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Inter-SemiBold",
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/pana.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      const Spacer(),
                      Column(
                        children: [
                          const Text(
                            "Amateur",
                            style: TextStyle(
                              fontFamily: "Inter-SemiBold",
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () => {
                                setState(() => {widget.isAmateur = true})
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: Color(
                                      BinariumColors.binariumLightGreyCode),
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: widget.isAmateur
                                          ? const Color(
                                              BinariumColors.binariumBlueCode)
                                          : const Color(BinariumColors
                                              .binariumLightGreyCode),
                                      shape: BoxShape.circle,
                                    ),
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 70),
                      Column(
                        children: [
                          const Text(
                            "Professional",
                            style: TextStyle(
                              fontFamily: "Inter-SemiBold",
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () => {
                                setState(() => {widget.isAmateur = false})
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: Color(
                                      BinariumColors.binariumLightGreyCode),
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: !widget.isAmateur
                                          ? const Color(
                                              BinariumColors.binariumBlueCode)
                                          : const Color(BinariumColors
                                              .binariumLightGreyCode),
                                      shape: BoxShape.circle,
                                    ),
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 45, left: 16, right: 16),
              child: Text(
                "Start playing without any added risk! You will master Forex trading skills in\na fun, easy and safe manner.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Inter-Medium",
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: widget.isOpenedFromSwitcher
                      ? 0.04 * MediaQuery.of(context).size.height
                      : 0.08 * MediaQuery.of(context).size.height),
              child: BinariumLightBlueButton(
                callback: () => {
                  widget.isOpenedFromSwitcher
                      ? Dependencies.instance.navigator
                          .openQuestionScreen(true, widget.contextOfTabBar)
                      : Dependencies.instance.navigator
                          .openNotificationScreen(),
                },
                text: 'Play Game',
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
