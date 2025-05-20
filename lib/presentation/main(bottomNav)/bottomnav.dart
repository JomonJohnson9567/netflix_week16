import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/downloads.dart';
import 'package:netflix/presentation/fastLaugh/fastlaugh.dart';
import 'package:netflix/presentation/homePage/homepage.dart';
import 'package:netflix/presentation/main(bottomNav)/widget/bottomnavwidget.dart';
import 'package:netflix/presentation/new_and_hot/newandhot.dart';
import 'package:netflix/presentation/search/search.dart';

 

class Bottomnav extends StatelessWidget {
  Bottomnav({super.key});

  final _pages = [
    Homepage(),
    ScreenNewAndHot(),
    Fastlaugh(),
    Search(),
    Downloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangerNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: Bottomnavwidget(),
    );
  }
}
