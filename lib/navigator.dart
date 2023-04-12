import 'package:bin_options/main_screens/switcher_screen.dart';
import 'package:bin_options/onboarding/screens/congrats_screen.dart';
import 'package:bin_options/onboarding/screens/notification_screen.dart';
import 'package:bin_options/onboarding/screens/question_screen.dart';
import 'package:bin_options/onboarding/screens/review_screen.dart';
import 'package:bin_options/onboarding/screens/trading_experience_screen.dart';
import 'package:bin_options/question_cubit/question_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class AppNavigator {
  // Глобальный навигатор
  static final navigatorKey = GlobalKey<NavigatorState>();

  openNotificationScreen() => navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => const NotificationScreen()));

  openQuestionScreen(bool isOpenedFromSwitcher, context) {
    if (isOpenedFromSwitcher) {
      PersistentNavBarNavigator.pushNewScreen(
        context,
        screen: QuestionScreen(context),
        withNavBar: true, // OPTIONAL VALUE. True by default.
        pageTransitionAnimation: PageTransitionAnimation.cupertino,
      );
    } else {
      navigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => QuestionsCubit(
              isOpenedFromSwitcher,
            ),
            child: QuestionScreen(null),
          ),
        ),
      );
    }
  }

  openCongratsScreen(int countOfCorrect, bool isOpenedFromSwitcher, context) {
    if (isOpenedFromSwitcher) {
      PersistentNavBarNavigator.pushNewScreen(
        context,
        screen: CongratsScreen(
          countOfCorrect: countOfCorrect,
          isOpenedFromSwitcher: isOpenedFromSwitcher,
        ),
        withNavBar: true, // OPTIONAL VALUE. True by default.
        pageTransitionAnimation: PageTransitionAnimation.cupertino,
      );
    } else {
      navigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(
          builder: (context) => CongratsScreen(
            countOfCorrect: countOfCorrect,
            isOpenedFromSwitcher: isOpenedFromSwitcher,
          ),
        ),
      );
    }
  }

  openReviewScreen() => navigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(
          builder: (context) => const ReviewScreen(),
        ),
      );

  openTradingExperienceScreen(isOpenedFromSwitcher, context) {
    if (isOpenedFromSwitcher) {
      PersistentNavBarNavigator.pushNewScreen(
        context,
        screen: TradingExperience(context, isOpenedFromSwitcher: isOpenedFromSwitcher),
        withNavBar: true, // OPTIONAL VALUE. True by default.
        pageTransitionAnimation: PageTransitionAnimation.cupertino,
      );
    } else {
      navigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              TradingExperience(null, isOpenedFromSwitcher: isOpenedFromSwitcher),
        ),
      );
    }
  }

  openSwitcherScreen() => navigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(
          builder: (context) => const SwitcherScreen(),
        ),
      );
}
