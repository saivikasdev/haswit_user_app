import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlook/data_handling/demo_data.dart';
import 'package:outlook/screens/main/components/recording_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants.dart';
import '../extensions.dart';

class resources extends StatelessWidget {
  const resources({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: InkWell(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: Color.fromARGB(95, 231, 230, 230),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "RESOURCES",
                        style: GoogleFonts.lato(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      resources_card(
                        name: "Github link",
                        press: () => _launchURL(
                          Uri.parse("https://pub.dev/packages/url_launcher"),
                        ),
                      ),
                      SizedBox(width: kDefaultPadding / 2),
                      resources_card(
                        name: "Github link",
                        press: () {},
                      ),
                      SizedBox(width: kDefaultPadding / 2),
                      resources_card(
                        name: "Session code",
                        press: () => _launchURL(Uri.parse("")),
                      ),
                    ],
                  ),
                ],
              ),
            ).addNeumorphism(
              blurRadius: 15,
              borderRadius: 15,
              offset: Offset(5, 5),
              topShadowColor: Colors.white60,
              bottomShadowColor: Color(0xFF234395).withOpacity(0.15),
            ),
          ],
        ),
      ),
    );
  }
}

class resources_card extends StatelessWidget {
  const resources_card({
    Key key,
    this.isActive = true,
    this.name,
    this.press,
  }) : super(key: key);

  final bool isActive;
  final String name;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    //  Here the shadow is not showing properly
    return Container(
      height: MediaQuery.of(context).size.height / 25,
      child: InkWell(
        onTap: press,
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Center(
                child: Text(
                  "${name} \n",
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ).addNeumorphism(
          blurRadius: 15,
          borderRadius: 15,
          offset: Offset(5, 5),
          topShadowColor: Colors.white60,
          bottomShadowColor: Color(0xFF234395).withOpacity(0.15),
        ),
      ),
    );
  }
}

void _launchURL(_url) async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
