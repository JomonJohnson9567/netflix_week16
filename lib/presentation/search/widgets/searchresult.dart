import 'package:flutter/material.dart';
import 'package:netflix/api/api.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/core/model/models.dart';
import 'package:netflix/presentation/search/widgets/title.dart';
 
const imageurl =
    "https://media.themoviedb.org/t/p/w533_and_h300_bestv2/ay8uvMrQNQcChIDMyfw60eAziQv.jpg";

class SearchresultWidget extends StatelessWidget {
  const SearchresultWidget({super.key, required this.result});
  final String result;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: "Movies & Tv"),
        kHeight,
        Expanded(
            child: FutureBuilder(
          future: Api().searchResult(result),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Error loading data'),
              );
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(
                child: Text('No Data Found'),
              );
            } else {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 8,
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1 / 1.4,
                ),
                itemBuilder: (context, index) {
                  var data = snapshot.data![index];
                  return MainCard(
                    movie: data,
                  );
                },
                itemCount: snapshot.data!.length,
                shrinkWrap: true,
              );
            }
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("$imagePath${movie.posterPath}"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
