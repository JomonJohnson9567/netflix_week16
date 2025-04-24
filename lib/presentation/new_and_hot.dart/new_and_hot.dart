import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';

import 'package:netflix/presentation/new_and_hot.dart/widgets/widget_comingsoon.dart';
import 'package:netflix/presentation/new_and_hot.dart/widgets/widget_everyones_watching.dart';
 

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Text(
              'New & Hot',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),

            actions: [
              Icon(
                Icons.cast,
                color: Colors.white,
              ), // Replace with your desired icon
              kwidth10,
              Container(width: 30, height: 30, color: kbluecolor),
            ],

            bottom: TabBar(
              unselectedLabelColor: kwhiteColor,
              isScrollable: true,
              labelColor: kblackColor,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              indicator: BoxDecoration(
                color: kwhiteColor,
                borderRadius: kRadius30,
              ),
              tabs: [
                Tab(text: '  🍿 Coming Soon   '),
                Tab(text: ' 👀 Everyone\'s Watching '),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [buildComingSoon(), buildEveryoneWatching()],
        ),
      ),
    );
  }
}

 

 