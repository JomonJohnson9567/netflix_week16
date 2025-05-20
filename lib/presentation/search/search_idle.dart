import 'package:flutter/material.dart';
import 'package:netflix/api/api.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/search/widgets/title.dart';
import 'package:netflix/presentation/search/widgets/top_search_title.dart';
 
const imageurl =
    'https://media.themoviedb.org/t/p/w533_and_h300_bestv2/tCKWksaQI8XkAQLVou0AlGab5S6.jpg';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(title: "Top Searches"),
        kHeight,
        Expanded(
          child: FutureBuilder(
            future: Api().forSearchDara(),
            builder: (context, snapshot) {
              if (snapshot.hasError || 
                  snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,  
                  ),
                );
              } else {
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var data = snapshot.data![index];                      
                      return TopSearchItemsTile(
                        movie: data,
                      );
                    },
                    separatorBuilder: (context, index) => kHeight20,
                    itemCount: 10);
              }
            },
          ),
        )
      ],
    );
  }
}
