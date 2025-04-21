import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth10,
        Text(
          title,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),  
        ),
        const Spacer(),
        Icon(Icons.cast, color: Colors.white), // Replace with your desired icon
        kwidth10,
        Container(width: 30, height: 30, color:kbluecolor),
        kwidth10,
      ],
    );
  }
}
