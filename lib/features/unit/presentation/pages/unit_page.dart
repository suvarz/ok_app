import 'package:flutter/material.dart';
import 'package:ok_app/config/color_theme.dart';

class UnitPage extends StatelessWidget {
  final double headerHeight;
  static const double headerTitleHeight = 40;
  static const double tabBarHeight = 60;

  const UnitPage({super.key, required this.headerHeight});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: ColorTheme.mainBackground,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorTheme.mainBarBackgroundFrom,
                ColorTheme.mainBarBackgroundTo,
              ],
            ),
          ),
          height: headerHeight + 80 + 40,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const HeaderTitleWidget(
                    height: headerTitleHeight,
                    title: 'Unit 10',
                  ),
                  SizedBox(
                    height: headerHeight - headerTitleHeight - tabBarHeight,
                  ),
                  const HeaderTabBar(height: tabBarHeight),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorTheme.mainBackground,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorTheme.darkBackground,
                          spreadRadius: -1,
                          blurRadius: 4,
                          offset: const Offset(0, -4),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(25),
                          child: Row(
                            children: [
                              Text('data'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HeaderTitleWidget extends StatelessWidget {
  final double height;
  final String title;

  const HeaderTitleWidget(
      {super.key, required this.height, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: height,
          height: height,
          child: const Icon(Icons.arrow_back),
        ),
        Expanded(
          child: Center(
            child: Text(title, style: const TextStyle(fontSize: 20)),
          ),
        ),
        SizedBox(
          width: height,
          height: 10,
        ),
      ],
    );
  }
}

class HeaderTabBar extends StatelessWidget {
  final double height;

  const HeaderTabBar({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container()),
        HeaderTabBarButtonWidget(title: 'Lesson', height: height),
        const SizedBox(width: 10),
        HeaderTabBarButtonWidget(title: 'Tests', height: height),
        const SizedBox(width: 10),
        HeaderTabBarButtonWidget(title: 'Audio', height: height),
        Expanded(child: Container()),
      ],
    );
  }
}

class HeaderTabBarButtonWidget extends StatelessWidget {
  final String title;
  final double height;

  const HeaderTabBarButtonWidget({super.key, required this.height, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorTheme.mainBackground,
      ),
      margin: EdgeInsets.symmetric(vertical: height / 2 - 13),
      width: 110,
      height: 26,
      child: Center(
          child: Text(
        title,
        style: const TextStyle(
          fontSize: 11,
          color: Colors.black,
        ),
      )),
    );
  }
}
