import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/homePage/widget/maincustombutton.dart';
 
 

class MainBackgroundcard extends StatelessWidget {
  const MainBackgroundcard({super.key, required this.image});
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagePath+image!))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const MainCustomButton(
                  icon: Icons.add,
                  title: "My List",
                ),
                _playButton(),
                MainCustomButton(icon: Icons.info, title: "Info")
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: kWhiteColors),
      onPressed: () {},
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Play",
          style: TextStyle(fontSize: 20, color: kBlackColors),
        ),
      ),
      icon: const Icon(Icons.play_arrow, size: 25, color: kBlackColors),
    );
  }
}
