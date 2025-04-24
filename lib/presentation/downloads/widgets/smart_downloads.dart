
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth10,
        Icon(Icons.settings, color: kwhiteColor),
        kwidth10,
        Text('Smart Downloads', style: TextStyle(fontSize: 19)),
      ],
    );
  }
}