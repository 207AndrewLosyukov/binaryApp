import 'package:bin_options/binarium_colors.dart';
import 'package:flutter/material.dart';

class BinariumLightBlueButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  final TextStyle style;
  const BinariumLightBlueButton(
      {super.key,
      required this.text,
      required this.callback,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315,
      height: 54,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: const Color(BinariumColors.binariumBlueCode),
        ),
        onPressed: callback,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: style,
        ),
      ),
    );
  }
}
