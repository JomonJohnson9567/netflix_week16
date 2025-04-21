import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key,required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      
      title,
      style: TextStyle(
        color: kwhiteColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  }
