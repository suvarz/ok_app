import 'package:flutter/material.dart';
import 'package:ok_app/config/color_theme.dart';

class UnitLessonPage extends StatelessWidget {
  final double headerHeight;
  static const double headerTitleHeight = 40;
  static const double tabBarHeight = 60;

  const UnitLessonPage({super.key, required this.headerHeight});

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
                  const Row(
                    children: [
                      SizedBox(
                        width: headerTitleHeight,
                        height: headerTitleHeight,
                        child: Icon(Icons.arrow_back),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Unit 10',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: headerTitleHeight,
                        height: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: headerHeight - headerTitleHeight - tabBarHeight,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      const TabBarButton(title: 'Lesson', height: tabBarHeight),
                      const SizedBox(width: 10),
                      const TabBarButton(title: 'Tests', height: tabBarHeight),
                      const SizedBox(width: 10),
                      const TabBarButton(title: 'Audio', height: tabBarHeight),
                      Expanded(child: Container()),
                    ],
                  ),
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

class TabBarButton extends StatelessWidget {
  final String title;
  final double height;

  const TabBarButton({super.key, required this.height, required this.title});

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
