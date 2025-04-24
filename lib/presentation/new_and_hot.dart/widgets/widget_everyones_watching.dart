  import 'package:flutter/material.dart';
import 'package:netflix/presentation/new_and_hot.dart/widgets/everyones_watching_widgets.dart';

Widget buildEveryoneWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) => EveryOnesWatching(),
    );
  }

