import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const _SmartDownloads(),
    SectionTwo(),
    const SectionTree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          100,
        ), // Set the height of the AppBar
        child: AppBarWidget(title: 'Downloads'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => SizedBox(height: 20),
        itemCount: _widgetList.length,
      ),
    );
  }
}

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

class SectionTree extends StatelessWidget {
  const SectionTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: buttoncolorBlue,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),

              child: Text(
                'Set up',
                style: TextStyle(
                  color: kwhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kheight20,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: buttoncolorwhite,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                color: bcakgroundcolor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();
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

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    required this.size,
    this.angle = 0,
    required this.margin,
    this.radius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: DecorationImage(
            image: NetworkImage(imageList),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
