
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widgets.dart';
import 'package:netflix/presentation/widgets/video_widgets.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('FEB', style: TextStyle(fontSize: 18, color: kgreyColor)),
              Text(
                '11',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            SizedBox(
              width: size.width - 50,
              height: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Wrap the image and the volume icon in a Stack
                  VideoWidgets(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'DEFENDERS',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: kwhiteColor,
                        ),
                      ),
                      Row(
                        children: [
                          CustomButtonWidget(
                            icon: Icons.notifications_outlined,
                            title: 'Remind Me',
                            iconSize: 30,
                            titleSize: 12,
                          ),
                          kwidth20,
                          CustomButtonWidget(
                            icon: Icons.info_outline,
                            title: 'Info ',
                            iconSize: 30,
                            titleSize: 12,
                          ),
                        ],
                      ),
                    ],
                  ),

                  Text('Coming on Friday'),
                  kheight10,
                  Text(
                    'Defenders',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: kwhiteColor,
                    ),
                  ),
                  Text(
                    'The Defenders is finally here! This crossover between Daredevil, Jessica Jones, Luke Cage, and Iron Fist premiered on Netflix on June 18. We are telling you everything we thought about it here!',
                    style: TextStyle(fontSize: 15, color: kwhiteGreyColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
