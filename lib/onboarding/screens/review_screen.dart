import 'package:bin_options/binarium_colors.dart';
import 'package:bin_options/dependencies.dart';
import 'package:bin_options/reusable/light_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:app_review/app_review.dart';
import 'package:material_color_generator/material_color_generator.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  String appID = "";
  String output = "";
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
                const Carousel(),
                Padding(
                  padding: EdgeInsets.only(
                      top: 80 / 812 * MediaQuery.of(context).size.height),
                  child: const Text(
                    "You will also like it",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Inter-Bold",
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 17, left: 51, right: 51),
                  child: Image.asset(
                    "assets/stars.png",
                    width: 270,
                    height: 50,
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: 0.08 * MediaQuery.of(context).size.height),
              child: BinariumLightBlueButton(
                callback: () => {
                  AppReview.requestReview,
                  Dependencies.instance.navigator.openSwitcherScreen(),
                },
                text: 'Continue',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(BinariumColors.whiteCode),
                  fontSize: 18,
                  fontFamily: "sfpro_display_bold",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);
  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;
  List<String> images = [
    "assets/Alvin.jpg",
    "assets/Noel.jpg",
    "assets/Lori.jpg"
  ];
  int activePage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 82.0),
          child: Container(
            width: double.infinity,
            height: 300,
            color: const Color(BinariumColors.binariumBlueCode),
            child: SizedBox(
              width: 300,
              height: 200,
              child: PageView.builder(
                  itemCount: images.length,
                  pageSnapping: true,
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                  itemBuilder: (context, pagePosition) {
                    bool active = pagePosition == activePage;
                    return slider(images, pagePosition, active);
                  }),
            ),
          ),
        ),
      ],
    );
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 0 : 25;
  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage(images[pagePosition]),
    )),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      return SizedBox(
        width: 200,
        height: 300,
        child: widget,
      );
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Image.asset(images[pagePosition]),
    ),
  );
}
