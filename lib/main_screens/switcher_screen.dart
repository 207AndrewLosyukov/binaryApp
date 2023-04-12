import 'package:bin_options/binarium_colors.dart';
import 'package:bin_options/dependencies.dart';
import 'package:bin_options/onboarding/screens/congrats_screen.dart';
import 'package:bin_options/onboarding/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class SwitcherScreen extends StatefulWidget {
  const SwitcherScreen({Key? key}) : super(key: key);

  @override
  State<SwitcherScreen> createState() => SwitcherScreenState();
}

class SwitcherScreenState extends State<SwitcherScreen> {
  // текущий выбор в нижней менюшке
  int currentTab = 0;
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          MdiIcons.fromString('chart-box-outline'),
        ),
        iconSize: 20.0,
        title: ("Signals"),
        activeColorPrimary: const Color(BinariumColors.whiteCode),
        inactiveColorPrimary: const Color(BinariumColors.unselectedIconColor),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          MdiIcons.fromString('help-box'),
        ),
        iconSize: 20.0,
        title: ("Quiz"),
        activeColorPrimary: const Color(BinariumColors.whiteCode),
        inactiveColorPrimary: const Color(BinariumColors.unselectedIconColor),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          MdiIcons.fromString('calculator-variant-outline'),
        ),
        iconSize: 20.0,
        title: ("Calculator"),
        activeColorPrimary: const Color(BinariumColors.whiteCode),
        inactiveColorPrimary: const Color(BinariumColors.unselectedIconColor),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          MdiIcons.fromString('book-outline'),
        ),
        iconSize: 20.0,
        title: ("Training"),
        activeColorPrimary: const Color(BinariumColors.whiteCode),
        inactiveColorPrimary: const Color(BinariumColors.unselectedIconColor),
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      const NotificationScreen(),
      FutureBuilder(
        future: Dependencies.instance.readCountOfAnswers(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return CongratsScreen(
              countOfCorrect: snapshot.data,
              isOpenedFromSwitcher: true,
            );
          }
        },
      ),
      const NotificationScreen(),
      const NotificationScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    const iconSize = 20.0;
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: const Color(
          BinariumColors.binariumBackgroundCode), // Default is Colors.white.
      popAllScreensOnTapOfSelectedTab: false,
      popActionScreens: PopActionScreensType.all,
      // itemAnimationProperties: ItemAnimationProperties(
      //   // Navigation Bar's items animation properties.
      //   duration: Duration(milliseconds: 200),
      //   curve: Curves.ease,
      // ),
      // screenTransitionAnimation: ScreenTransitionAnimation(
      //   // Screen transition animation on change of selected tab.
      //   animateTabTransition: true,
      //   curve: Curves.ease,
      //   duration: Duration(milliseconds: 200),
      // ),
       navBarStyle:
           NavBarStyle.style6, // Choose the nav bar style with this property.
    );

    // Scaffold(
    //   body: <Widget>[
    //     const NotificationScreen(),
    //     FutureBuilder(
    //       future: Dependencies.instance.readCountOfAnswers(),
    //       builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    //         if (!snapshot.hasData) {
    //           return const Center(
    //             child: CircularProgressIndicator(),
    //           );
    //         } else {
    //           return CongratsScreen(
    //             countOfCorrect: snapshot.data,
    //             isOpenedFromSwitcher: true,
    //           );
    //         }
    //       },
    //     ),
    //     const NotificationScreen(),
    //     const NotificationScreen(),
    //   ][currentTab],
    //   bottomNavigationBar: BottomNavigationBar(
    //     type: BottomNavigationBarType.fixed,
    //     selectedItemColor: const Color(BinariumColors.whiteCode),
    //     unselectedItemColor: const Color(BinariumColors.unselectedIconColor),
    //     currentIndex: currentTab,
    //     onTap: (int i) {
    //       setState(() => currentTab = i);
    //     },
    //     items: [
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           MdiIcons.fromString('chart-box-outline'),
    //           size: iconSize,
    //         ),
    //         label: 'Signals',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           MdiIcons.fromString('help-box'),
    //           size: iconSize,
    //         ),
    //         label: 'Quiz',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           MdiIcons.fromString('calculator-variant-outline'),
    //           size: iconSize,
    //         ),
    //         label: 'Calculator',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           MdiIcons.fromString('book-outline'),
    //           size: iconSize,
    //         ),
    //         label: 'Training',
    //       ),
    //     ],
    //   ),
    // );
  }
}
