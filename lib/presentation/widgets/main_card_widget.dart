import 'package:flutter/material.dart';
import 'package:netflix/core/const.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: DecorationImage(
          image: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/en/4/4c/Deadpool_%26_Wolverine_poster.jpg',
          ),
        ),
      ),
    );
  }
}
