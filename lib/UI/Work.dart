import 'package:dev_protfolio/Widget/CustomText.dart';
import 'package:dev_protfolio/Widget/Workbox.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 0.7,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "02.",
                textsize: 20.0,
                color: Color(0xff61F9D5),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: "Where I've Worked",
                textsize: 26.0,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: size.width * 0.01,
              ),
              Container(
                width: size.width / 4,
                height: 1.10,
                color: Color(0xff303C55),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.07,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: size.height * 0.5,
                    //color: Colors.indigo,
                    child: Stack(
                      children: [
                        const Center(
                          child: VerticalDivider(
                            color: Color(0xff64FFDA),
                            thickness: 1.75,
                            width: 10,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        Container(
                          child: const Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.lightBlue,
                                child: FaIcon(FontAwesomeIcons.hotel, color: Colors.white),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: FlutterLogo(),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.deepPurple,
                                child: FaIcon(FontAwesomeIcons.dev, color: Colors.white),
                              ),
                            ],
                          )),
                        )
                      ],
                    )),
              ),
              Expanded(
                  flex: 6,
                  child: Container(
                    height: size.height * 0.5,
                    child: WorkBox(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
