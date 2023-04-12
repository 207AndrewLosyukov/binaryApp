import 'package:bin_options/binarium_colors.dart';
import 'package:bin_options/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({super.key});

  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 200),
      (() => setState(() {
            _width = MediaQuery.of(context).size.width - 82;
          })),
    );

    Future.delayed(
      const Duration(milliseconds: 1700),
      (() => Dependencies.instance.checkCountOfAnswersAndOpen(context)),
    );
  }

  double _width = 40;
  final double _height = 24;
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: generateMaterialColor(
        color: const Color(BinariumColors.binariumBackgroundCode),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/load_picture.png",
                width: 223,
                height: 223,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 70,
                left: 41,
              ),
              child: AnimatedContainer(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(BinariumColors.firstGradientColor),
                      Color(BinariumColors.secondGradientColor),
                    ],
                  ),
                  borderRadius: _borderRadius,
                ),
                duration: const Duration(
                  milliseconds: 1500,
                ),
                curve: Curves.fastOutSlowIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
