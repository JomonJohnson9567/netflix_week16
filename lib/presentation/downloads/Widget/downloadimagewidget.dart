import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/const.dart';
 
 

// ignore: camel_case_types
class downloadsImageWidget extends StatelessWidget {
  const downloadsImageWidget(
      {super.key,
      this.angle = 0,
      required this.margin,
      required this.imageList,
      this.borderRadius = 10,  
    required this.size});
  final String? imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 160,
        child: ClipRRect(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("$imagePath$imageList"))),
          ),
        ),
      ),
    );
  }
}
