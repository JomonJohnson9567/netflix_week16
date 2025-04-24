import 'package:flutter/material.dart';
import 'package:netflix/presentation/new_and_hot.dart/widgets/coming_soon_widgets.dart';

Widget buildComingSoon() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, index) => ComingSoonWidget(),
  );
}
