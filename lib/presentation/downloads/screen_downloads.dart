import 'package:flutter/material.dart'; 
import 'package:netflix/presentation/downloads/widgets/Screen_section_three.dart'; 
import 'package:netflix/presentation/downloads/widgets/screen_section_two.dart';
import 'package:netflix/presentation/downloads/widgets/smart_downloads.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const SmartDownloads(),
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
