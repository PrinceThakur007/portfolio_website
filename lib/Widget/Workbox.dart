import 'package:dev_protfolio/Widget/work_custom_data.dart';
import 'package:flutter/material.dart';

class WorkBox extends StatelessWidget {
  final double titleSize, subTitleSize, durationSize;

  const WorkBox(
      {super.key,
      this.titleSize = 22,
      this.subTitleSize = 13,
      this.durationSize = 12});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          titleSize: titleSize,
          subTitleSize: subTitleSize,
          durationSize: durationSize,
          title: "Software Engineer",
          subTitle:
              "I am currently working as a Software Engineer at Savana inc",
          duration: "April 2025 - Present",
        ),
        WorkCustomData(
          titleSize: titleSize,
          subTitleSize: subTitleSize,
          durationSize: durationSize,
          title: "Software Engineer",
          subTitle:
              "I am currently working as a Software Engineer at Sequoia Applied Technologies",
          duration: "October 2022 - June 2024",
        ),
        WorkCustomData(
          titleSize: titleSize,
          subTitleSize: subTitleSize,
          durationSize: durationSize,
          title: "Software Engineer",
          subTitle: "I worked as a Flutter Engineer at Netscape Labs ",
          duration: "Dec 2020 - July 2022",
        ),
        WorkCustomData(
          titleSize: titleSize,
          subTitleSize: subTitleSize,
          durationSize: durationSize,
          title: "Flutter Intern",
          subTitle:
              "I worked as a Flutter Engineer Intern at Eduwiave",
          duration: "Jan 2020 - July 2020",
        ),
      ],
    );
  }
}
