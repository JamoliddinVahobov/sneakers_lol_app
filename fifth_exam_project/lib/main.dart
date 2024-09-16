import 'package:fifth_exam_project/first_screen.dart';
import 'package:fifth_exam_project/fifth_screen.dart';
import 'package:fifth_exam_project/second_screen.dart';
import 'package:fifth_exam_project/fourth_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/first': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const FourthScreen(),
        '/fourth': (context) => const FifthScreen(),
      },
    );
  }
}
