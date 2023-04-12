import 'dart:io';

import 'package:bin_options/binarium_colors.dart';
import 'package:bin_options/dependencies.dart';
import 'package:bin_options/reusable/light_blue_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
                      top: 0.1 * MediaQuery.of(context).size.height,
                      left: 39,
                      right: 39),
                  child: const Text(
                    "Turn on push notifications",
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
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 20 / 812 * MediaQuery.of(context).size.height),
                    child: const Text(
                      "Be informed with our fast-updating economic calendar for important events and releases that affect the markets",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Inter-Medium",
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Image.asset(
                    'assets/notif.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: 0.08 * MediaQuery.of(context).size.height),
                child: BinariumLightBlueButton(
                  callback: () => {
                    showAlertDialog(
                        context: context,
                        title:
                            "“Binarium” would like to Send You Notifications",
                        content:
                            "Notifications may include alerts, sounds and icon badges. These can be configured in Settings.",
                        cancelActionText: "Don’t Allow",
                        defaultActionText: "Allow")
                  },
                  text: 'Continue',
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "sfpro_display_bold",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<Future> showAlertDialog({
    required BuildContext context,
    required String title,
    required String content,
    required String cancelActionText,
    required String defaultActionText,
  }) async {
    if (!Platform.isIOS) {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            ElevatedButton(
                child: Text(cancelActionText),
                onPressed: () => {
                      Navigator.of(context).pop(false),
                      Dependencies.instance.navigator.openQuestionScreen(false, context),
                    }),
            ElevatedButton(
                child: Text(defaultActionText),
                onPressed: () => {
                      Navigator.of(context).pop(true),
                      Dependencies.instance.navigator.openQuestionScreen(false, context),
                    }),
          ],
        ),
      );
    }

    return showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text(cancelActionText),
            onPressed: () => {
              Navigator.of(context).pop(false),
              Dependencies.instance.navigator.openQuestionScreen(false, context),
            },
          ),
          CupertinoDialogAction(
            child: Text(
              defaultActionText,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () => {
              Navigator.of(context).pop(true),
              Dependencies.instance.navigator.openQuestionScreen(false, context),
            },
          ),
        ],
      ),
    );
  }
}
