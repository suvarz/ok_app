import 'package:flutter/material.dart';
import 'package:ok_app/features/units/presentation/pages/units_page.dart';

class OkApp extends StatelessWidget {
  const OkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ok App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UnitsPage(),
    );
  }
}
