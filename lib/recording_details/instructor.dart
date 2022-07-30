import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlook/data_handling/demo_data.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants.dart';
import '../extensions.dart';

class mentor_details extends StatelessWidget {
  const mentor_details({
    Key key,
    this.mentor,
    this.duty,
    this.about,
  }) : super(key: key);

  final String mentor;
  final String duty;
  final String about;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: INDEX.sessionindex,
      builder: (context, value, child) => Padding(
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
                          "INSTRUCTOR",
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
                        CircleAvatar(
                          maxRadius: 34,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(emails[3].image),
                        ),
                        SizedBox(width: kDefaultPadding / 2),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: emails[value].mentor,
                              style: GoogleFonts.lato(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: [
                                TextSpan(
                                  text: emails[value].duty,
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      emails[value].about,
                      style:
                          GoogleFonts.lato(fontSize: 20, color: Colors.black54),
                    )
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
      ),
    );
  }
}
