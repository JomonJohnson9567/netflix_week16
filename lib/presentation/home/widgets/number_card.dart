import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: 60, height: 180),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius20,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://cdn.xingosoftware.com/hifi/images/fetch/dpr_2,w_755,l_hifi/https%3A%2F%2Fhifi.nl%2Fgfx%2F20250320101729_Adolescence.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: -25,
          bottom: -50,
          child: BorderedText(
            strokeWidth: 9,
            strokeColor: kwhiteColor,
            child: Text(
              ' ${index + 1} ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 150,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
