import 'package:flutter/material.dart';
import 'package:flutter_chat/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter chat Ui',
      theme: ThemeData(
        primaryColor: Colors.red,
        hintColor: Color(0xfffef9eB),
      ),
      home: Homescreen(),
    );
  }
}
