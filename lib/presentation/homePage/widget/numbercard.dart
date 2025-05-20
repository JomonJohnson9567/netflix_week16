
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/core/model/models.dart';
 
 

class Numbercard extends StatelessWidget {
  const Numbercard({super.key, required this.index, required this.movie});
  final int index;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        '$imagePath${movie.posterPath}',
                      ))),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -30,
          child: BorderedText(
            strokeWidth: 10.0,
            strokeColor: kWhiteColors,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kBlackColors,
                  fontSize: 140,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
