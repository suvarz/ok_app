import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  final String title;
  final String imagePath;

  const AppBar({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(

      title: Text(title),
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.red,
      // shadowColor: Colors.blue,
      expandedHeight: 200,
      centerTitle: true,
      floating: false,
      pinned: false,
      snap: false,
      elevation: 0,
    );
  }
}
