import 'package:bin_options/navigator.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Dependencies {
  final AppNavigator navigator;

  static late Dependencies _instance;

  Dependencies._(
    this.navigator,
  );

  static Future<Dependencies> init() async {
    await Hive.initFlutter();

    return _instance = Dependencies._(
      AppNavigator(),
    );
  }

  void writeCountOfAnswers(int count) {
    var box = Hive.box('Answers');
    box.put('countOfCorrect', count);
  }

  Future<int> readCountOfAnswers() async {
    await Hive.openBox('Answers');
    var box = Hive.box('Answers');
    return box.get('countOfCorrect') ?? -1;
  }

  void checkCountOfAnswersAndOpen(context) async {
    await Dependencies.instance.readCountOfAnswers() == -1
        ? navigator.openTradingExperienceScreen(false, context)
        : navigator.openSwitcherScreen();
  }

  static Dependencies get instance => _instance;
}

enum Level {
  amateur,
  professional,
}
