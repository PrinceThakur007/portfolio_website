import 'package:dev_protfolio/Widget/CustomText.dart';
import 'package:dev_protfolio/Widget/Workbox.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Work extends StatefulWidget {
  const Work({super.key});

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
                color: const Color(0xff61F9D5),
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: "Where I've Worked",
                textsize: 26.0,
                color: const Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                width: size.width * 0.01,
              ),
              Container(
                width: size.width / 4,
                height: 1.10,
                color: const Color(0xff303C55),
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
                child: SizedBox(
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
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.lightBlue,
                                radius: 20,
                                child: Image.network(
                                    "https://media.licdn.com/dms/image/v2/C4D0BAQHtlPrb6LUQCQ/company-logo_200_200/company-logo_200_200/0/1654290606261/savana_inc_logo?e=1751500800&v=beta&t=5HGFEWirHneOO4O1J63NHfNcowSkQTyZX3jdUhoDfZ0"),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.lightBlue,
                                child: Image.network(
                                    "https://media.licdn.com/dms/image/v2/C510BAQGxqFw6rEzzuw/company-logo_200_200/company-logo_200_200/0/1631363607148?e=1751500800&v=beta&t=aXAX6h4wxOehKXEKgX8KwcN_VfJhj7tGUSAOMxbnulQ"),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.network("https://media.licdn.com/dms/image/v2/D4D0BAQEnZEdY03gUpA/company-logo_200_200/company-logo_200_200/0/1665551822306/netscapelabsinfotechpvtltd_logo?e=1751500800&v=beta&t=X1LJgL5ub5VE4Cuae2T3t5L56ZFCEH28ZgstMIjg650"),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.deepPurple,
                                child: Image.network("https://media.licdn.com/dms/image/v2/C510BAQHz4EniXaKLBQ/company-logo_200_200/company-logo_200_200/0/1630586577543/eduwaivefoundation_logo?e=1751500800&v=beta&t=nzpvADB4xZw5lNuCGkpu8UlHJESvHYJ0e6-Ty_x162U"),
                              ),
                            ],
                          )),
                        )
                      ],
                    )),
              ),
              Expanded(
                  flex: 6,
                  child: SizedBox(
                    height: size.height * 0.5,
                    child: const WorkBox(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
