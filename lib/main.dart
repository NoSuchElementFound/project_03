import 'package:flutter/material.dart';
import 'package:project_03/Classic_bottom_navigation_bar/homepage.dart';
import 'package:project_03/Persistant_navigation_bar/homepage_persistant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage_persistent(),
    );
  }
}
