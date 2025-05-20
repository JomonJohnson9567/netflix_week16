 import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/Widget/section2.dart';
import 'package:netflix/presentation/downloads/Widget/section3.dart';
import 'package:netflix/presentation/downloads/Widget/smartdownload.dart';
import 'package:netflix/presentation/widgets/appbarwidget.dart';
 

class Downloads extends StatelessWidget {
  Downloads({super.key});

  // ignore: non_constant_identifier_names
  final _WidgetList = [
    const SmartDownloads(),
    Section2(),
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Appbarwidget(
              title: 'Downloads',
            )),
        body: ListView.separated(
            padding: EdgeInsets.all(10),
            itemBuilder: (ctx, index) => _WidgetList[index],
            separatorBuilder: (ctx, index) => SizedBox(
                  height: 25,
                ),
            itemCount: _WidgetList.length));
  }
}






