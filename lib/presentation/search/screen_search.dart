import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
 import 'package:netflix/presentation/search/widgets/search_result.dart';



class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                // ignore: deprecated_member_use
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              kheight10,

              Expanded(child: const SearchIdle()),
              // Expanded(child: const SearchResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
