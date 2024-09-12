import 'package:dev_protfolio/Widget/work_custom_data.dart';
import 'package:flutter/material.dart';

class MobileWork extends StatelessWidget {
  const MobileWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "Software Developer",
          subTitle:
          "I am currently working as a Software Developer at Sequoia Applied Technologies",
          duration: "October 2022 - Present",
        ),
        WorkCustomData(
          title: "Software Developer",
          subTitle: "I worked as a Flutter Developer at Netscape Labs ",
          duration: "Dec 2020 - July 2022",
        ),
        WorkCustomData(
          title: "Flutter Developer Intern",
          subTitle:
          "I worked as a Flutter Developer Intern at A.P. Moller Maersk",
          duration: "September 2022 - March 2023",
        ),

      ],
    );
  }
}
