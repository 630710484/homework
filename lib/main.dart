import 'package:flutter/material.dart';
import 'package:untitled/screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onile Course',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:  Homepage(),
    );
  }
}

