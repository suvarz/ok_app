import 'package:flutter/material.dart';
import 'package:ok_app/config/color_theme.dart';

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
      margin: const EdgeInsets.only(bottom: 15),
      width: 110,
      height: 25,
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