import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class NumbertitleCard extends StatelessWidget {
  const NumbertitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: 'Top 10 TV Shows in India Today'),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) {
              return NumberCard(index: index,);
            }),
          ),
        ),
      ],
    );
  }
}
