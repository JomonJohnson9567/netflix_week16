import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
 

class MainCustomButton extends StatelessWidget {
  const MainCustomButton({
    super.key,
    required this.icon,
    required this.title,
    this.iconsize = 30,
    this.fontsize = 18,
  });

  final IconData icon;
  final String title;
  final double iconsize;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: kWhiteColors, size: iconsize),
        TextButton(
          onPressed: () {
            if (title == "My List") {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const MyListPage()),
              // );
            }
          },
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontsize,
              color: kWhiteColors,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
