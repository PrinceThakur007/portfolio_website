import 'package:dev_protfolio/Model/Method.dart';
import 'package:dev_protfolio/Widget/CustomText.dart';
import 'package:flutter/material.dart';

import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widget/MobileWorkBox.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: const Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  final ScrollController _controller = ScrollController();
  void _scrollToIndex(int index) {
    final contentSize = _controller.position.viewportDimension + _controller.position.maxScrollExtent;
    final target = contentSize * index / 4;
    _controller.position.animateTo(
      target,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Widget _mobileMenu(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff64FFDA),
      body: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  _scrollToIndex(1);
                },
                child: CustomText(
                  text: 'About',
                  textsize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff0A192F),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  _scrollToIndex(2);
                },
                child: CustomText(
                  text: 'Experience',
                  fontWeight: FontWeight.bold,
                  textsize: 20,
                  color: const Color(0xff0A192F),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Method().launchEmail();
                },
                child: CustomText(
                  text: 'Contact Me',
                  fontWeight: FontWeight.bold,
                  textsize: 20,
                  color: const Color(0xff0A192F),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Method().launchURL(
                      "https://drive.google.com/file/d/1Rj_rmTI6B1FQFoGiEP4zvafVlQBhlBDN/view");
                },
                child: CustomText(
                  text: 'Resume',
                  fontWeight: FontWeight.bold,
                  textsize: 20,
                  color: const Color(0xff0A192F),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff0A192F),
      // endDrawer: Drawer(
      //     elevation: 6.0,
      //     child: Column(
      //       children: [
      //         UserAccountsDrawerHeader(
      //             currentAccountPicture: CircleAvatar(
      //               child: Icon(Icons.person),
      //             ),
      //             accountName: Text("Prince Thakur"),
      //             accountEmail: Text("jakansha2001@gmail.com")),
      //         ListTile(
      //           title: Text("Share"),
      //           leading: Icon(Icons.share),
      //         ),
      //         ListTile(
      //           leading: Icon(Icons.group),
      //           title: Text("About"),
      //         ),
      //         Expanded(
      //           child: Text("Version 1.0.1"),
      //         )
      //       ],
      //     )),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () => Navigator.of(context).push(
                PageTransition(
                  type: PageTransitionType.rippleRightDown,
                  child: _mobileMenu(context),
                  duration: const Duration(milliseconds: 500),
                ),
              ),
              icon: const Icon(
                Icons.menu,
                color: Color(0xff64FFDA),
              ),
            ),
          )
        ],
        backgroundColor: const Color(0xff0A192F),
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            text: "PT",
            textsize: 20.0,
            color: const Color(0xff41FBDA),
            letterSpacing: 3.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          controller: _controller,
          children: [
            SizedBox(
              height: size.height * 0.08,
            ),
            CustomText(
              text: "Hi, my name is",
              textsize: 16.0,
              color: const Color(0xff41FBDA),
              letterSpacing: 3.0,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomText(
              text: "Prince Thakur.",
              textsize: 52.0,
              color: const Color(0xffCCD6F6),
              fontWeight: FontWeight.w900,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            CustomTypeWriterText(
              text: "I design and develop apps with Flutter.",
              textsize: 42.0,
              color: const Color(0xffCCD6F6).withOpacity(0.6),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Wrap(
                children: [
                  Text(
                    "I'm a Flutter Developer based in United States,  specialized in building (and occasionally designing) exceptional applications, websites, and everything in between.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      letterSpacing: 2.75,
                      wordSpacing: 0.75,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              color: const Color(0xff64FFDA),
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(0.75),
                height: 56.0,
                width: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xff0A192F),
                ),
                child: MaterialButton(
                  onPressed: () {
                    method.launchEmail();
                  },
                  hoverColor: Colors.green,
                  child: const Text(
                    "Get In Touch",
                    style: TextStyle(
                      color: Color(0xff64FFDA),
                      letterSpacing: 2.75,
                      wordSpacing: 1.0,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),

            //About me
            FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: size.width,
                //color: Colors.purple,
                child: Column(
                  children: [
                    //About me title
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "01.",
                          textsize: 20.0,
                          color: const Color(0xff61F9D5),
                          fontWeight: FontWeight.w700,
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        CustomText(
                          text: "About Me",
                          textsize: 26.0,
                          color: const Color(0xffCCD6F6),
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
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

                    //About me desc
                    Wrap(
                      children: [
                        CustomText(
                          text:
                              "Hello! I'm Prince, a Flutter Developer based in United States, .\nI enjoy creating things that solve real-world problems, may it be using applications, websites, or anything in between. My goal is to build solutions by leveraging the power of cross-platform development.\n",
                          textsize: 16.0,
                          color: const Color(0xff828DAA),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.75,
                        ),
                        CustomText(
                          text: "Here are a few technologies I've been working with recently:\n\n",
                          textsize: 16.0,
                          color: const Color(0xff828DAA),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.75,
                        ),
                      ],
                    ),

                    SizedBox(
                      height: size.height * 0.06,
                    ),

                    Container(
                      width: size.width,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              technology(context, "Dart"),
                              technology(context, "Flutter"),
                              technology(context, "Firebase"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              technology(context, "Java"),
                              technology(context, "UI/UX (Figma)"),
                              technology(context, "Git / GitHub"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: size.height * 0.08,
            ),

            //Image
            Center(
              child: SizedBox(
                height: size.height * 0.6,
                width: size.width * 0.7,
                child: Stack(
                  children: [
                    Positioned(
                      top: 50,
                      right: 20,
                      left: 50.0,
                      child: Card(
                        color: const Color(0xff61F9D5),
                        child: Container(
                          margin: const EdgeInsets.all(2.75),
                          height: size.height * 0.45,
                          width: size.width * 0.66,
                          color: const Color(0xff0A192F),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.5,
                      width: size.width * 0.6,
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage("images/prince_profile_image.JPG"),
                      ),
                    ),
                    // Container(
                    //   height: size.height * 0.5,
                    //   width: size.width * 0.6,
                    //   color: Color(0xff61F9D5).withOpacity(0.5),
                    // ),
                  ],
                ),
              ),
            ),
            //Where I've Worked title
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
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Container(
                  width: size.width * 0.08,
                  height: 1.10,
                  color: const Color(0xff303C55),
                ),
              ],
            ),

            const MobileWork(),

            SizedBox(
              height: size.height * 0.07,
            ),

            FittedBox(
              fit: BoxFit.cover,
              child: Container(
                //height: size.aspectRatio,
                width: size.width,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "03. What's Next?",
                      textsize: 16.0,
                      color: const Color(0xff41FBDA),
                      letterSpacing: 3.0,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    CustomText(
                      text: "Get In Touch",
                      textsize: 42.0,
                      color: Colors.white,
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          "My inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            letterSpacing: 0.75,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    InkWell(
                      onTap: () {
                        method.launchEmail();
                      },
                      child: Card(
                        elevation: 4.0,
                        color: const Color(0xff64FFDA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(0.85),
                          height: size.height * 0.10,
                          width: size.width * 0.30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff0A192F),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              "Say Hello 👋🏼",
                              style: TextStyle(
                                color: Color(0xff64FFDA),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: size.height * 0.07,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                    size: 15.0,
                  ),
                  onPressed: () {
                    method.launchURL("https://github.com/PrinceThakur007");
                  },
                ),
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white,
                    size: 15.0,
                  ),
                  onPressed: () {
                    method.launchURL("https://www.linkedin.com/in/princethakur007/");
                  },
                ),
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                    size: 15.0,
                  ),
                  onPressed: () {
                    method.launchURL("https://x.com/007thakurprince");
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.mail,
                    color: Colors.white,
                    size: 15.0,
                  ),
                  onPressed: () {
                    method.launchEmail();
                  },
                )
              ],
            ),

            SizedBox(
              height: size.height * 0.07,
            ),

            //Footer
          ],
        ),
      ),
    );
  }
}
