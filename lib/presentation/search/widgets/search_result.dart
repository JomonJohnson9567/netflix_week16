import 'package:flutter/material.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

const imageurl =
    'https://i.pinimg.com/736x/71/0f/f2/710ff2d98ca34e0f4a27eb7a2d5c0598.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: ' Movies & TV Shows'),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.4,
            children: List.generate(12, (index) {
              return MainCard();
            }),
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageurl),
        ),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
