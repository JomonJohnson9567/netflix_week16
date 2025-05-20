import 'package:flutter/material.dart';

import 'package:netflix/core/colors.dart';
import 'package:netflix/presentation/main(bottomNav)/bottomnav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bottomnav(),
      title: "NetFlix",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: backroundColor,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
