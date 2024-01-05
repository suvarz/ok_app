import 'package:flutter/material.dart';
import 'package:ok_app/config/color_theme.dart';

abstract class AppPage extends StatelessWidget {
  static const double headerTitleHeight = 40;
  static const double headerCardHeight = 150;
  static const double headerTabBarHeight = 60;
  static const double headerHeight =
      headerTitleHeight + headerCardHeight + headerTabBarHeight;

  static const double headerTopPadding = 80;
  static const double contentBorderRadius = 40;

  final List<HeaderTabBarItemDto> _tabs;

  const AppPage({
    super.key,
    required List<HeaderTabBarItemDto> tabs,
  }) : _tabs = tabs;

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
          height: headerHeight + headerTopPadding + contentBorderRadius,
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
                  Container(
                    height: headerCardHeight,
                    // color: Colors.red,
                  ),
                  HeaderTabBarWidget(height: headerTabBarHeight, tabs: _tabs),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorTheme.mainBackground,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(contentBorderRadius),
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

class HeaderTabBarWidget extends StatelessWidget {
  final List<HeaderTabBarItemDto> _tabs;
  final double _height;

  const HeaderTabBarWidget({
    super.key,
    required List<HeaderTabBarItemDto> tabs,
    required double height,
  })  : _height = height,
        _tabs = tabs;

  @override
  Widget build(BuildContext context) {
    List<Widget> tabWidgets = [];
    for (int i = 0; i < _tabs.length; i++) {
      tabWidgets.add(
        HeaderTabBarButtonWidget(height: _height, title: _tabs[i].title),
      );
      if (i < (_tabs.length - 1)) {
        tabWidgets.add(const SizedBox(width: 10));
      }
    }
    return Row(
      children: [
        Expanded(child: Container()),
        ...tabWidgets,
        Expanded(child: Container()),
      ],
    );
  }
}

class HeaderTabBarItemDto {
  final String action;
  final String title;

  const HeaderTabBarItemDto({
    required this.action,
    required this.title,
  });
}

class HeaderTabBarButtonWidget extends StatelessWidget {
  final String title;
  final double height;

  const HeaderTabBarButtonWidget(
      {super.key, required this.height, required this.title});

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
