import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/screens/intro.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Great Places',
      home: IntroScreen(),
    );
  }
}
