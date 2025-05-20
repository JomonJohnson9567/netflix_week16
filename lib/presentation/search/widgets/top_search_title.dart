import 'package:flutter/cupertino.dart';
 
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/core/model/models.dart';
 

class TopSearchItemsTile extends StatelessWidget {
  const TopSearchItemsTile({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("$imagePath${movie.backdroppath}"))),
        ),
        kwidth,
        Expanded(
            child: Text(
          movie.title!,
          style: const TextStyle(
              color: kWhiteColors, fontSize: 16, fontWeight: FontWeight.bold),
        )),
        const Icon(
          CupertinoIcons.play_circle,
          size: 45,
          color: kWhiteColors,
        )
      ],
    );
  }
}
