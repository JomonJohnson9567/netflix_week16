import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class SearchTextTitle extends StatelessWidget {
  final String title;
  const SearchTextTitle({super.key, required this.title});

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
