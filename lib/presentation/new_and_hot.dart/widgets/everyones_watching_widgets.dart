
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widgets.dart';
import 'package:netflix/presentation/widgets/video_widgets.dart';

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight10,
        Text(
          'Friends',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: kwhiteColor,
          ),
        ),
        Text(
          'This sitcom follows the merry misadventures of six \n 20 to 30-something friends as they navigate the pitfalls of \n work, life and love in 1990s Manhattan.',
          style: TextStyle(fontSize: 15, color: kwhiteGreyColor),
        ),
        kheight40,
        VideoWidgets(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            kheight10,
            CustomButtonWidget(
              icon: Icons.share,
              title: 'Share',
              iconSize: 30,
              titleSize: 12,
            ),
            kwidth20,
            CustomButtonWidget(
              icon: Icons.add,
              title: 'My List',
              iconSize: 30,
              titleSize: 12,
            ),
            kwidth20,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: 'Play',
              iconSize: 30,
              titleSize: 12,
            ),
            kwidth10,
          ],
        ),
      ],
    );
  }
}
