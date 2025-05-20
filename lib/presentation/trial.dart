// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:netfix_api_clone/api/api.dart';
// import 'package:netfix_api_clone/core/const.dart';

// import 'package:netfix_api_clone/presentation/widgets/maintitlecardhome.dart';

// class MyListPage extends StatelessWidget {
//   const MyListPage({super.key});
//   fetchData() async {
//     trendingNowListNotifeir.value = await Api().getTrendingMovies();

//     top10TvShowsInIndiaTodayListNotifier.value =
//         await Api().getTop10TvShowsInIndiaToday();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 15, top: 20),
//       child: MainTitleCardHome(
//         listNotifier: topRatedListNotifier,
//         title: "Trending Now",
        
//       ),
//     );
//   }
// }
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<void> updateUser(int userId, String name, String email) async {
  final url = Uri.parse('https://example.com/users/$userId');

  final response = await http.put(
    url,
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'name': name,
      'email': email,
    }),
  );

  if (response.statusCode == 200) {
    if (kDebugMode) {
      print('User updated successfully');
    }
  } else {
    if (kDebugMode) {
      print('Failed to update user: ${response.statusCode}');
    }
  }
}
