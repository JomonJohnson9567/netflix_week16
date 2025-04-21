// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.accents[index % Colors.accents.length]),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  radius: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.volume_off, color: kwhiteColor, size: 20),
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456',
                        ),
                      ),
                    ),
                    VideoActionsWidget(
                      icon: Icons.emoji_emotions,
                      title: 'LOL',
                    ),
                    VideoActionsWidget(icon: Icons.add, title: 'My List'),
                    VideoActionsWidget(icon: Icons.share, title: 'Share'),
                    VideoActionsWidget(icon: Icons.play_arrow, title: 'Play'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(icon, color: kwhiteColor, size: 30),
          Text(title, style: TextStyle(color: kwhiteColor, fontSize: 16)),
        ],
      ),
    );
  }
}
