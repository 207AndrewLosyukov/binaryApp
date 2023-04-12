import 'package:bin_options/binarium_colors.dart';
import 'package:bin_options/dependencies.dart';
import 'package:bin_options/navigator.dart';
import 'package:bin_options/onboarding/screens/load_screen.dart';
import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:material_color_generator/material_color_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Dependencies.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Binarium',
      home: const AnimatedContainerApp(),
      theme: ThemeData(
          primarySwatch: generateMaterialColor(
            color: const Color(BinariumColors.binariumBackgroundCode),
          ),
          canvasColor: generateMaterialColor(
            color: const Color(BinariumColors.binariumBackgroundCode),
          ),
          primaryColor: generateMaterialColor(
            color: const Color(BinariumColors.binariumBackgroundCode),
          ),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS:
                CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
          })),
      navigatorKey: AppNavigator.navigatorKey,
    );
  }
}
