import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.icon,
    required this.title,
    this.iconSize = 30,
    this.titleSize = 20,
  });
  final IconData icon;
  final String title;
  final double iconSize;
  final double titleSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: iconSize, color: kwhiteColor),
        Text(title, style: TextStyle(fontSize: titleSize, color: kwhiteColor)),
      ],
    );
  }
}
