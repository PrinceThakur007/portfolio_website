import 'package:url_launcher/url_launcher.dart';

class Method {
  launchURL(String link) async {
    var url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    const url = "tel:3016905580";
    if (await launchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    if (!await launchUrl(Uri.parse("mailto:princepatyal007@gmail.com"))) {
      throw Exception('Could not launch "mailto:princepatyal007@gmail.com"');
    }
    // if (await canLaunchUrl(
    //   Uri(scheme: "mailto", path: ":princepatyal007@gmail.com"),
    // )) {
    //   await canLaunchUrl(
    //     Uri(scheme: "mailto", path: ":princepatyal007@gmail.com"),
    //   );
    // } else {
    //   throw 'Could not launch';
    // }
  }
}
