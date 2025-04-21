// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:netflix/core/const.dart';

class VideoWidgets extends StatelessWidget {
  const VideoWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(imageUrlHotandnew1, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 20,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.volume_off, color: Colors.white, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
