import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/home/widgets/background_card_widget.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },

            child: Stack(
              children: [
                ListView(
                  children: [
                    BackgroundCardWidget(),
                    MainTitleCard(title: 'Released in past years'),
                    kheight10,
                    MainTitleCard(title: 'Trending Now'),
                    kheight10,
                    NumbertitleCard(),
                    MainTitleCard(title: 'Tense Dramas'),
                    kheight10,
                    MainTitleCard(title: 'South Indian Cinema'),
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                      duration: const Duration(milliseconds: 3),
                      width: double.infinity,
                      height: 80,
                      color: Colors.black87,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image(
                                image: NetworkImage(klogourl),
                                width: 50,
                                height: 50,
                              ),
                              const Spacer(),
                              Icon(
                                Icons.cast,
                                color: Colors.white,
                              ), // Replace with your desired icon
                              kwidth10,
                              Container(
                                width: 30,
                                height: 30,
                                color: kbluecolor,
                              ),
                              kwidth10,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('TV Shows', style: kHomeTitleText),
                              Text('Movies', style: kHomeTitleText),
                              Text('Categories', style: kHomeTitleText),
                              Icon(Icons.draw),
                            ],
                          ),
                        ],
                      ),
                    )
                    : kheight10,
              ],
            ),
          );
        },
      ),
    );
  }

  // ignore: non_constant_identifier_names
}
