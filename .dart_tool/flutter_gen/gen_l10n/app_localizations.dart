import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @signals.
  ///
  /// In en, this message translates to:
  /// **'Signals'**
  String get signals;

  /// No description provided for @quiz.
  ///
  /// In en, this message translates to:
  /// **'Quiz'**
  String get quiz;

  /// No description provided for @calculator.
  ///
  /// In en, this message translates to:
  /// **'Calculator'**
  String get calculator;

  /// No description provided for @training.
  ///
  /// In en, this message translates to:
  /// **'Training'**
  String get training;

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get buy;

  /// No description provided for @sell.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get sell;

  /// A message with a single parameter
  ///
  /// In en, this message translates to:
  /// **'{count}/10'**
  String countOfCorrect(String count);

  /// No description provided for @congrats.
  ///
  /// In en, this message translates to:
  /// **'Congrats!'**
  String get congrats;

  /// No description provided for @veryGoodForBeginner.
  ///
  /// In en, this message translates to:
  /// **'Very good for a beginner, but you can do better. Come back again and improve the results!'**
  String get veryGoodForBeginner;

  /// No description provided for @playAgain.
  ///
  /// In en, this message translates to:
  /// **'Play Again'**
  String get playAgain;

  /// No description provided for @profitCalculator.
  ///
  /// In en, this message translates to:
  /// **'Profit Calculator'**
  String get profitCalculator;

  /// No description provided for @useOurProfitCalculator.
  ///
  /// In en, this message translates to:
  /// **'Use our profit calculator to calculate the possible profit from a trade you are considering taking'**
  String get useOurProfitCalculator;

  /// No description provided for @neverBeOverwhelmed.
  ///
  /// In en, this message translates to:
  /// **'Never be overwhelmed by trading education again'**
  String get neverBeOverwhelmed;

  /// No description provided for @knowledgeIsEverything.
  ///
  /// In en, this message translates to:
  /// **'Knowledge is everything, the more you know, the better your trading game will be. Our Trading Room is packed with world-class trading education.'**
  String get knowledgeIsEverything;

  /// No description provided for @hoursOfEasy.
  ///
  /// In en, this message translates to:
  /// **'300+ hours of easy to understand video lessons'**
  String get hoursOfEasy;

  /// No description provided for @suitableForNew.
  ///
  /// In en, this message translates to:
  /// **'Suitable for new and advanced Forex traders'**
  String get suitableForNew;

  /// No description provided for @testYourForex.
  ///
  /// In en, this message translates to:
  /// **'Test your Forex knowledge with our interactive quizzes'**
  String get testYourForex;

  /// No description provided for @confused.
  ///
  /// In en, this message translates to:
  /// **'Confused? Ask our market analysts for help!'**
  String get confused;

  /// No description provided for @startLearning.
  ///
  /// In en, this message translates to:
  /// **'Start Learning'**
  String get startLearning;

  /// No description provided for @continueOnButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueOnButton;

  /// No description provided for @currencyPair.
  ///
  /// In en, this message translates to:
  /// **'Currency pair'**
  String get currencyPair;

  /// No description provided for @accountCurrency.
  ///
  /// In en, this message translates to:
  /// **'Account currency'**
  String get accountCurrency;

  /// No description provided for @volumeLots.
  ///
  /// In en, this message translates to:
  /// **'Volume, lots'**
  String get volumeLots;

  /// No description provided for @direction.
  ///
  /// In en, this message translates to:
  /// **'Direction'**
  String get direction;

  /// No description provided for @openPrice.
  ///
  /// In en, this message translates to:
  /// **'Open price'**
  String get openPrice;

  /// No description provided for @closePrice.
  ///
  /// In en, this message translates to:
  /// **'Close price'**
  String get closePrice;

  /// No description provided for @howDoWeCalculate.
  ///
  /// In en, this message translates to:
  /// **'How do we calculate profit/loss?'**
  String get howDoWeCalculate;

  /// No description provided for @tip.
  ///
  /// In en, this message translates to:
  /// **'How does the Forex profit calculator work?\nSelect the instrument (currency pair) \nyou\'re trading.\nSelect the account currency \n(deposit currency) of your trading account.\nInput the open and close price \nfor your planned trade.\nInput the trade size as volume, lots.'**
  String get tip;

  /// No description provided for @calculateProfit.
  ///
  /// In en, this message translates to:
  /// **'Calculate Profit'**
  String get calculateProfit;

  /// No description provided for @whatIsYourTradingExperience.
  ///
  /// In en, this message translates to:
  /// **'What is your trading experience?'**
  String get whatIsYourTradingExperience;

  /// No description provided for @amateur.
  ///
  /// In en, this message translates to:
  /// **'Amateur'**
  String get amateur;

  /// No description provided for @professional.
  ///
  /// In en, this message translates to:
  /// **'Professional'**
  String get professional;

  /// No description provided for @startPlayingWithout.
  ///
  /// In en, this message translates to:
  /// **'Start playing without any added risk! You will master Forex trading skills in\na fun, easy and safe manner.'**
  String get startPlayingWithout;

  /// No description provided for @playGame.
  ///
  /// In en, this message translates to:
  /// **'Play Game'**
  String get playGame;

  /// No description provided for @turnOnPushNotifications.
  ///
  /// In en, this message translates to:
  /// **'Turn on push notifications'**
  String get turnOnPushNotifications;

  /// No description provided for @beInformedWithOur.
  ///
  /// In en, this message translates to:
  /// **'Be informed with our fast-updating economic calendar for important events and releases that affect the markets'**
  String get beInformedWithOur;

  /// No description provided for @binariumWouldLikeToSend.
  ///
  /// In en, this message translates to:
  /// **'“Binarium” would like to Send You Notifications'**
  String get binariumWouldLikeToSend;

  /// No description provided for @notificationMayIncludeAlerts.
  ///
  /// In en, this message translates to:
  /// **'Notifications may include alerts, sounds and icon badges. These can be configured in Settings.'**
  String get notificationMayIncludeAlerts;

  /// No description provided for @dontAllow.
  ///
  /// In en, this message translates to:
  /// **'Don’t Allow'**
  String get dontAllow;

  /// No description provided for @allow.
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get allow;

  /// No description provided for @question1.
  ///
  /// In en, this message translates to:
  /// **'Who is known as the man who “Broke the Bank of England”?'**
  String get question1;

  /// No description provided for @question2.
  ///
  /// In en, this message translates to:
  /// **'What is the situation where prices tend to rise is called?'**
  String get question2;

  /// No description provided for @question3.
  ///
  /// In en, this message translates to:
  /// **'If the United States stopped importing automobiles from Country X, who would be most likely to benefit?'**
  String get question3;

  /// No description provided for @question4.
  ///
  /// In en, this message translates to:
  /// **'A statement made by officials of the European Central Bank that the Bank will only intervene in the event that the currency exchange rate fluctuations become too fast. Does this statement affect the value of the euro?'**
  String get question4;

  /// No description provided for @question5.
  ///
  /// In en, this message translates to:
  /// **'Joachim Gauck, previous President of Germany, announces that he is going on a leisure trip to France. Does this statement affect the value of the euro?'**
  String get question5;

  /// No description provided for @question6.
  ///
  /// In en, this message translates to:
  /// **'Currency pairs that are traded much less frequently than major currency pairs are known as:'**
  String get question6;

  /// No description provided for @question7.
  ///
  /// In en, this message translates to:
  /// **'What is the code for British Pound?'**
  String get question7;

  /// No description provided for @question8.
  ///
  /// In en, this message translates to:
  /// **'If the price of beef doubled and the price of poultry stayed the same, people would most likely buy:'**
  String get question8;

  /// No description provided for @question9.
  ///
  /// In en, this message translates to:
  /// **'In which financial hub is the Yen traded?'**
  String get question9;

  /// No description provided for @question10.
  ///
  /// In en, this message translates to:
  /// **'Which is the most traded currency in the world?'**
  String get question10;

  /// No description provided for @answer1first.
  ///
  /// In en, this message translates to:
  /// **'George Soros'**
  String get answer1first;

  /// No description provided for @answer1second.
  ///
  /// In en, this message translates to:
  /// **'Warren Buffet'**
  String get answer1second;

  /// No description provided for @answer1third.
  ///
  /// In en, this message translates to:
  /// **'Brad Pit'**
  String get answer1third;

  /// No description provided for @answer2first.
  ///
  /// In en, this message translates to:
  /// **'Dog Market'**
  String get answer2first;

  /// No description provided for @answer2second.
  ///
  /// In en, this message translates to:
  /// **'Bear Market'**
  String get answer2second;

  /// No description provided for @answer2third.
  ///
  /// In en, this message translates to:
  /// **'Bull Market'**
  String get answer2third;

  /// No description provided for @answer3first.
  ///
  /// In en, this message translates to:
  /// **'Automobile manufactures in Country X'**
  String get answer3first;

  /// No description provided for @answer3second.
  ///
  /// In en, this message translates to:
  /// **'Automobile manufactures in the U.S'**
  String get answer3second;

  /// No description provided for @answer3third.
  ///
  /// In en, this message translates to:
  /// **'Nobody'**
  String get answer3third;

  /// No description provided for @answer4first.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get answer4first;

  /// No description provided for @answer4second.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get answer4second;

  /// No description provided for @answer5first.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get answer5first;

  /// No description provided for @answer5second.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get answer5second;

  /// No description provided for @answer6first.
  ///
  /// In en, this message translates to:
  /// **'Dying couples'**
  String get answer6first;

  /// No description provided for @answer6second.
  ///
  /// In en, this message translates to:
  /// **'Unique couples'**
  String get answer6second;

  /// No description provided for @answer6third.
  ///
  /// In en, this message translates to:
  /// **'Exotic couples'**
  String get answer6third;

  /// No description provided for @answer7first.
  ///
  /// In en, this message translates to:
  /// **'GBP'**
  String get answer7first;

  /// No description provided for @answer7second.
  ///
  /// In en, this message translates to:
  /// **'BPY'**
  String get answer7second;

  /// No description provided for @answer7third.
  ///
  /// In en, this message translates to:
  /// **'UKP'**
  String get answer7third;

  /// No description provided for @answer8first.
  ///
  /// In en, this message translates to:
  /// **'The same amount'**
  String get answer8first;

  /// No description provided for @answer8second.
  ///
  /// In en, this message translates to:
  /// **'More poultry and less beef'**
  String get answer8second;

  /// No description provided for @answer8third.
  ///
  /// In en, this message translates to:
  /// **'Less poultry and more beef'**
  String get answer8third;

  /// No description provided for @answer9first.
  ///
  /// In en, this message translates to:
  /// **'Tokyo'**
  String get answer9first;

  /// No description provided for @answer9second.
  ///
  /// In en, this message translates to:
  /// **'London'**
  String get answer9second;

  /// No description provided for @answer9third.
  ///
  /// In en, this message translates to:
  /// **'All of the above'**
  String get answer9third;

  /// No description provided for @answer10first.
  ///
  /// In en, this message translates to:
  /// **'USD'**
  String get answer10first;

  /// No description provided for @answer10second.
  ///
  /// In en, this message translates to:
  /// **'EUR'**
  String get answer10second;

  /// No description provided for @answer10third.
  ///
  /// In en, this message translates to:
  /// **'GBP'**
  String get answer10third;

  /// A message with a single parameter
  ///
  /// In en, this message translates to:
  /// **'Question {numb}/10'**
  String questionNumber(String numb);

  /// No description provided for @youWillAlsoLikeIt.
  ///
  /// In en, this message translates to:
  /// **'You will also like it'**
  String get youWillAlsoLikeIt;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
