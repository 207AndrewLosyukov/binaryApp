import 'package:bin_options/binarium_colors.dart';
import 'package:flutter/material.dart';

class BinariumAnswerChip extends StatelessWidget {
  final String text;
  final String answerChar;
  final Color color;
  final Color textColor;

  const BinariumAnswerChip({
    super.key,
    required this.text,
    required this.answerChar,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: 315,
        height: 54,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              40,
            ),
          ),
        ),
        child: Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Container(
                  decoration: BoxDecoration(
                    color: color ==
                            const Color(BinariumColors.binariumLightGreyCode)
                        ? const Color(BinariumColors.binariumBlueCode)
                        : color,
                    shape: BoxShape.circle,
                  ),
                  width: 44,
                  height: 44,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      answerChar,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(BinariumColors.whiteCode),
                        fontSize: 18,
                        fontFamily: "sfpro_display_bold",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (text.length <= 25)
              SizedBox(
                width: 213,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    text,
                    maxLines: 10,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: textColor,
                      fontSize: 18,
                      fontFamily: "sfpro_display_bold",
                    ),
                  ),
                ),
              )
            else if (text.length <= 30)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 0,
                    top: 0,
                  ),
                  child: Text(
                    text,
                    maxLines: 10,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: textColor,
                      fontSize: 18,
                      fontFamily: "sfpro_display_bold",
                    ),
                  ),
                ),
              )
            else
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 0,
                    top: 6,
                  ),
                  child: Text(
                    text,
                    maxLines: 10,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: textColor,
                      fontSize: 18,
                      fontFamily: "sfpro_display_bold",
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
