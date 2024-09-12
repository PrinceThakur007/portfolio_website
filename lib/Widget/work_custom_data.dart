import 'package:flutter/material.dart';

class WorkCustomData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String duration;
  final double titleSize, subTitleSize, durationSize;

  const WorkCustomData({
    super.key,
    required this.title,
    required this.subTitle,
    required this.duration,
    this.titleSize = 22,
    this.subTitleSize = 13,
    this.durationSize = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: titleSize,
            color: const Color(0xffCCD6F6),
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: subTitleSize,
            color: const Color(0xffCCD6F6).withOpacity(0.5),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          duration,
          style: TextStyle(
            fontSize: durationSize,
            color: const Color(0xffCCD6F6).withOpacity(0.5),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
