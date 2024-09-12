import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color color;
  double? letterSpacing;
  FontWeight? fontWeight;

  CustomText(
      {super.key, required this.text,
      required this.textsize,
      required this.color,
      this.letterSpacing,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontSize: textsize,
          letterSpacing: letterSpacing ?? 0.10,
          fontWeight: fontWeight ?? FontWeight.w400),
    );
  }
}

class CustomTypeWriterText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color color;
  double? letterSpacing;
  FontWeight? fontWeight;

  CustomTypeWriterText(
      {super.key, required this.text,
      required this.textsize,
      required this.color,
      this.letterSpacing,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return TypeWriter.text(
      text,
      duration: const Duration(milliseconds: 150),
      style: TextStyle(
          color: color,
          fontSize: textsize,
          letterSpacing: letterSpacing ?? 0.10,
          fontWeight: fontWeight ?? FontWeight.w400),
    );
  }
}
