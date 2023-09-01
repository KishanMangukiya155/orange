import 'package:flutter/material.dart';
import 'package:orange/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orange Foods',
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}
