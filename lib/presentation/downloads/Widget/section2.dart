import 'package:flutter/material.dart';
import 'package:netflix/api/api.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/downloads/Widget/downloadimagewidget.dart';
 

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhiteColors,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          'We will download a personalised selection of\nmovies and shows for you, So there\nalways something to watch on your\ndevice',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kHeight,
        FutureBuilder<List<String?>>(
          future: Api().getDownloadImageUrls(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting ||
                snapshot.connectionState == ConnectionState.none) {
              return Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: size.width * 0.395,
                  child: const CircularProgressIndicator(),
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: size.width * 0.395,
                  child: const CircularProgressIndicator(),
                ),
              );
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Text('No data available');
            } else {
              return SizedBox(
                width: size.width,
                height: size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: size.width * 0.4,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                    downloadsImageWidget(
                      imageList: snapshot.data![0],
                      margin: EdgeInsets.only(left: 140, bottom: 50, top: 40),
                      angle: 25,
                      size: Size(size.width * 0.4, size.width * 0.58),
                    ),
                    downloadsImageWidget(
                      imageList: snapshot.data![1],
                      margin: EdgeInsets.only(right: 140, bottom: 50, top: 30),
                      angle: -25,
                      size: Size(size.width * 0.4, size.width * 0.58),
                    ),
                    downloadsImageWidget(
                      imageList: snapshot.data![2],
                      margin: EdgeInsets.only(bottom: 10, top: 30),
                      size: Size(size.width * 0.45, size.width * 0.65),
                    ),
                    downloadsImageWidget(
                      imageList: snapshot.data![2],
                      margin: EdgeInsets.only(bottom: 10, top: 30),
                      size: Size(size.width * 0.45, size.width * 0.65),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
