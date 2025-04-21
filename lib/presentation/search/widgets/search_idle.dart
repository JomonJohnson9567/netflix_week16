import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});
  static const imageurl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQactGhxGTswwf1WX1uKG-iMbrR4obgO2qp4g&s';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Top Searches'),
        kheight10,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => TopSearchItem(),
            separatorBuilder: (ctx, index) => kheight20,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TopSearchItem extends StatelessWidget {
  const TopSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenWidth = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: screenWidth.width * 0.35,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(SearchIdle.imageurl),
            ),
          ),
        ),
        kwidth10,
        Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
              color: kwhiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: kwhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: bcakgroundcolor,
            radius: 23,
            child: Icon(Icons.play_arrow, color: kwhiteColor, size: 30),
          ),
        ),
      ],
    );
  }
}
