import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signals => 'Signals';

  @override
  String get quiz => 'Quiz';

  @override
  String get calculator => 'Calculator';

  @override
  String get training => 'Training';

  @override
  String get buy => 'Buy';

  @override
  String get sell => 'Sell';

  @override
  String countOfCorrect(String count) {
    return '$count/10';
  }

  @override
  String get congrats => 'Congrats!';

  @override
  String get veryGoodForBeginner => 'Very good for a beginner, but you can do better. Come back again and improve the results!';

  @override
  String get playAgain => 'Play Again';

  @override
  String get profitCalculator => 'Profit Calculator';

  @override
  String get useOurProfitCalculator => 'Use our profit calculator to calculate the possible profit from a trade you are considering taking';

  @override
  String get neverBeOverwhelmed => 'Never be overwhelmed by trading education again';

  @override
  String get knowledgeIsEverything => 'Knowledge is everything, the more you know, the better your trading game will be. Our Trading Room is packed with world-class trading education.';

  @override
  String get hoursOfEasy => '300+ hours of easy to understand video lessons';

  @override
  String get suitableForNew => 'Suitable for new and advanced Forex traders';

  @override
  String get testYourForex => 'Test your Forex knowledge with our interactive quizzes';

  @override
  String get confused => 'Confused? Ask our market analysts for help!';

  @override
  String get startLearning => 'Start Learning';

  @override
  String get continueOnButton => 'Continue';

  @override
  String get currencyPair => 'Currency pair';

  @override
  String get accountCurrency => 'Account currency';

  @override
  String get volumeLots => 'Volume, lots';

  @override
  String get direction => 'Direction';

  @override
  String get openPrice => 'Open price';

  @override
  String get closePrice => 'Close price';

  @override
  String get howDoWeCalculate => 'How do we calculate profit/loss?';

  @override
  String get tip => 'How does the Forex profit calculator work?\nSelect the instrument (currency pair) \nyou\'re trading.\nSelect the account currency \n(deposit currency) of your trading account.\nInput the open and close price \nfor your planned trade.\nInput the trade size as volume, lots.';

  @override
  String get calculateProfit => 'Calculate Profit';

  @override
  String get whatIsYourTradingExperience => 'What is your trading experience?';

  @override
  String get amateur => 'Amateur';

  @override
  String get professional => 'Professional';

  @override
  String get startPlayingWithout => 'Start playing without any added risk! You will master Forex trading skills in\na fun, easy and safe manner.';

  @override
  String get playGame => 'Play Game';

  @override
  String get turnOnPushNotifications => 'Turn on push notifications';

  @override
  String get beInformedWithOur => 'Be informed with our fast-updating economic calendar for important events and releases that affect the markets';

  @override
  String get binariumWouldLikeToSend => '“Binarium” would like to Send You Notifications';

  @override
  String get notificationMayIncludeAlerts => 'Notifications may include alerts, sounds and icon badges. These can be configured in Settings.';

  @override
  String get dontAllow => 'Don’t Allow';

  @override
  String get allow => 'Allow';

  @override
  String get question1 => 'Who is known as the man who “Broke the Bank of England”?';

  @override
  String get question2 => 'What is the situation where prices tend to rise is called?';

  @override
  String get question3 => 'If the United States stopped importing automobiles from Country X, who would be most likely to benefit?';

  @override
  String get question4 => 'A statement made by officials of the European Central Bank that the Bank will only intervene in the event that the currency exchange rate fluctuations become too fast. Does this statement affect the value of the euro?';

  @override
  String get question5 => 'Joachim Gauck, previous President of Germany, announces that he is going on a leisure trip to France. Does this statement affect the value of the euro?';

  @override
  String get question6 => 'Currency pairs that are traded much less frequently than major currency pairs are known as:';

  @override
  String get question7 => 'What is the code for British Pound?';

  @override
  String get question8 => 'If the price of beef doubled and the price of poultry stayed the same, people would most likely buy:';

  @override
  String get question9 => 'In which financial hub is the Yen traded?';

  @override
  String get question10 => 'Which is the most traded currency in the world?';

  @override
  String get answer1first => 'George Soros';

  @override
  String get answer1second => 'Warren Buffet';

  @override
  String get answer1third => 'Brad Pit';

  @override
  String get answer2first => 'Dog Market';

  @override
  String get answer2second => 'Bear Market';

  @override
  String get answer2third => 'Bull Market';

  @override
  String get answer3first => 'Automobile manufactures in Country X';

  @override
  String get answer3second => 'Automobile manufactures in the U.S';

  @override
  String get answer3third => 'Nobody';

  @override
  String get answer4first => 'Yes';

  @override
  String get answer4second => 'No';

  @override
  String get answer5first => 'Yes';

  @override
  String get answer5second => 'No';

  @override
  String get answer6first => 'Dying couples';

  @override
  String get answer6second => 'Unique couples';

  @override
  String get answer6third => 'Exotic couples';

  @override
  String get answer7first => 'GBP';

  @override
  String get answer7second => 'BPY';

  @override
  String get answer7third => 'UKP';

  @override
  String get answer8first => 'The same amount';

  @override
  String get answer8second => 'More poultry and less beef';

  @override
  String get answer8third => 'Less poultry and more beef';

  @override
  String get answer9first => 'Tokyo';

  @override
  String get answer9second => 'London';

  @override
  String get answer9third => 'All of the above';

  @override
  String get answer10first => 'USD';

  @override
  String get answer10second => 'EUR';

  @override
  String get answer10third => 'GBP';

  @override
  String questionNumber(String numb) {
    return 'Question $numb/10';
  }

  @override
  String get youWillAlsoLikeIt => 'You will also like it';
}
