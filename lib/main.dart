import 'package:cook_app/home_page.dart';
import 'package:cook_app/recipe_detail_page.dart';
import 'package:cook_app/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cook App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 66, 194, 167)),
        useMaterial3: true,
      ),
      home: const StartPage(),
    );
  }
}
