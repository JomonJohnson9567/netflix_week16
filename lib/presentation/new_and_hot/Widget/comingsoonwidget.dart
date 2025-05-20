import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/core/model/models.dart';
import 'package:netflix/presentation/homePage/widget/maincustombutton.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  ComingSoonWidget({super.key, required this.movie});
  final Movie movie;
  final DateFormat monthFormatter = DateFormat('MMM');
  final DateFormat dayFormatter = DateFormat('dd');
  final DateFormat dayFormatterDay = DateFormat('EEEE');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                monthFormatter
                    .format(DateTime.parse(movie.releaseDate!))
                    .toUpperCase(),
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                dayFormatter.format(DateTime.parse(movie.releaseDate!)),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(image: movie.posterPath),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Use Flexible instead of SizedBox + Expanded
                  Flexible(
                    flex: 1,
                    child: Text(
                      '${movie.title}',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: -1,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  Row(
                    children: [
                      MainCustomButton(
                        icon: Icons.alarm,
                        title: 'Remind me',
                        iconsize: 30,
                        fontsize: 12,
                      ),
                      kwidth,
                      MainCustomButton(
                        icon: Icons.info,
                        title: 'Info',
                        iconsize: 30,
                        fontsize: 12,
                      ),
                    ],
                  ),
                ],
              ),

              kHeight,
              Text(
                'Coming on ${dayFormatterDay.format(DateTime.parse(movie.releaseDate!))}',
              ),
              kHeight,
              Text(
                '${movie.title}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kHeight,
              Text(
                '${movie.overview}',
                maxLines: 3,
                style: TextStyle(
                  color: Colors.grey,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// const newandhottempimg =
//     'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/Aa9TLpNpBMyRkD8sPJ7ACKLjt0l.jpg';
