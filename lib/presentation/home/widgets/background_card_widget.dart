import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widgets.dart';

class BackgroundCardWidget extends StatelessWidget {
  const BackgroundCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,

          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(mainimageurl2)),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtonWidget(icon: Icons.add, title: 'My List'),
                _PlayButton(),
                CustomButtonWidget(icon: Icons.info_outline, title: 'Info'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  TextButton _PlayButton() {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(kwhiteColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Change radius as needed
          ),
        ),
      ),
      onPressed: () {},
      icon: Icon(Icons.play_arrow, size: 30, color: kblackColor),
      label: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Text('Play', style: TextStyle(fontSize: 25, color: kblackColor)),
      ),
    );
  }
}
