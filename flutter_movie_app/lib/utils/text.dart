import 'package:flutter/material.dart';
import 'package:flutter_movie_app/utils/text.dart';

class modified_text extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const modified_text(
    {
    Key? key,
    required this.color,
    required this.size, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.breeSerif(color: color, fontSize: size),
    );
  }
}

class GoogleFonts {
  static breeSerif({Color? color, double? fontSize}) {}
}
