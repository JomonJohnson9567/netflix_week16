import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/api/debouncer.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/const.dart';
import 'package:netflix/presentation/search/search_idle.dart';
import 'package:netflix/presentation/search/widgets/searchresult.dart';
 

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool changer = false;
  final searchController = TextEditingController();
  final _debouncer = Debouncer(delay: const Duration(milliseconds: 500));
  final ValueNotifier<bool> showSearchResult = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            controller: searchController,
            backgroundColor: Colors.grey.withOpacity(0.4),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            style: const TextStyle(color: Colors.white),
            placeholder: 'Search',
            placeholderStyle: const TextStyle(color: kWhiteColors),
            onChanged: (value) {
              _debouncer.call(() {
                setState(() {
                  changer = value.isNotEmpty;
                });
              });
            },
            onSuffixTap: () {
              searchController.clear();
              setState(() {
                changer = false;
              });
            },
          ),
          kHeight,
          Expanded(
              child: changer
                  ? SearchresultWidget(result: searchController.text)
                  : const SearchIdle())
        ],
      ),
    ));
  }
}
