import 'package:flutter/material.dart';
import 'package:ok_app/config/color_theme.dart';

class UnitLessonPage extends StatelessWidget {
  final double headerHeight;

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
                  SizedBox(height: headerHeight),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorTheme.mainBackground,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorTheme.darkBackground,
                          spreadRadius: -5,
                          blurRadius: 5,
                          offset: const Offset(0, -5),
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
