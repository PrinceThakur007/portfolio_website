import 'package:dev_protfolio/Widget/work_custom_data.dart';
import 'package:flutter/material.dart';

class WorkBox extends StatelessWidget {
  final double titleSize, subTitleSize, durationSize;

  const WorkBox(
      {Key? key,
      this.titleSize = 22,
      this.subTitleSize = 13,
      this.durationSize = 12})
      : super(key: key);

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
          title: "Software Developer",
          subTitle:
              "I am currently working as a Software Developer at Sequoia Applied Technologies",
          duration: "October 2022 - Present",
        ),
        WorkCustomData(
          titleSize: titleSize,
          subTitleSize: subTitleSize,
          durationSize: durationSize,
          title: "Software Developer",
          subTitle: "I worked as a Flutter Developer at Netscape Labs ",
          duration: "Dec 2020 - July 2022",
        ),
        WorkCustomData(
          titleSize: titleSize,
          subTitleSize: subTitleSize,
          durationSize: durationSize,
          title: "Flutter Developer Intern",
          subTitle:
              "I worked as a Flutter Developer Intern at A.P. Moller Maersk",
          duration: "September 2022 - March 2023",
        ),

      ],
    );
  }
}
