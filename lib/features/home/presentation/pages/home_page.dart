import 'package:flutter/material.dart';
import 'package:ok_app/features/app/presentation/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: const SafeArea(
        child: Text('123'),
      ),
      appBar: AppBar(title: const Text('App Bar')),
      bottomNavigationBar: const NavBar(),
    );
  }
}
