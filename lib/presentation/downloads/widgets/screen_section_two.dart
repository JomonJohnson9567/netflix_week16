import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/downloads/widgets/download_image_widget.dart';
 

class SectionTwo extends StatelessWidget {
  SectionTwo({super.key});

  final List imageList = [
    'https://occ-0-6501-3663.1.nflxso.net/dnm/api/v6/-klpX4b1RECP-oGX3Uvz90PrgHE/AAAABYHo0V2bhrd-QLe1R5jmftASfTB3u5_4uNHdYwQLE1YAXzvUMnggh45B_3fmWIvmMHSZVAQOXcMZrXmYi28fPvyXPBhRWzYeDipXRi_w7ZG2s6pF5wlu1_t1bTpZHirUD0MfvZExoHCCQJmPWn-t.webp?r=95f',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-N5q6pMFKiysRkw7-z2p3CLlHh4KmX2w7Xw&s',
    'https://images.justwatch.com/poster/309783153/s332/temporada-2',
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Center(
          child: Text(
            'Introducing Downloads for you',
            style: TextStyle(
              color: kwhiteColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        kheight10,
        Text(
          "We'll download a personalised selection of \n movies and shows for you, so there's \n always something to watch on your \n device.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kheight20,
        SizedBox(
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[700],
                  radius: size.width * .40,
                  // Squid Game
                  child: DownloadsImageWidget(
                    angle: .48,
                    imageList: imageList[2],
                    margin: EdgeInsets.only(left: 160, bottom: 50),
                    size: Size(size.width * 0.4, size.width * 0.58),
                  ),
                ),
              ),
              //Chaava
              DownloadsImageWidget(
                angle: -.48,
                imageList: imageList[0],
                margin: EdgeInsets.only(right: 160, bottom: 50),
                size: Size(size.width * 0.4, size.width * 0.58),
              ),
              //Officer on duty
              DownloadsImageWidget(
                angle: 0,
                imageList: imageList[1],
                margin: EdgeInsets.only(top: 0),
                size: Size(size.width * 0.4, size.width * 0.65),
              ),
            ],
          ),
        ),
        kheight30,
      ],
    );
  }
}
