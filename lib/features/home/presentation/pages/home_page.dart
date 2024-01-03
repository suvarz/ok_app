import 'package:flutter/material.dart';
import 'package:ok_app/config/color_theme.dart';
import 'package:ok_app/features/app/presentation/widgets/nav_bar.dart';
import 'package:ok_app/features/home/presentation/widgets/home_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              const Expanded(child: HomeWidget()),
              Container(
                color: Colors.red,
                height: 70,
                child: const Center(child: Text('nav')),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const NavBar(),
      ),
    );
  }
}
