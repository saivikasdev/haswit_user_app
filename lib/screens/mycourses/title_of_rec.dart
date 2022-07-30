import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlook/animation.dart';

import '../../profile_page/constantss.dart';

class titleofrec extends StatelessWidget {
  const titleofrec({
    Key key,
    this.title,
    this.subTitle,
    this.color,
    this.image,
  }) : super(key: key);

  final String title, subTitle, image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(
        children: [
          Container(
            child: Image.asset(image),
            // margin: EdgeInsets.only(right: kDefaultPadding),
            // padding: EdgeInsets.only(bottom: 72),
            // width: 8,
            // height: 100,
            // color: Colors.black,
            // child: DecoratedBox(
            //   decoration: BoxDecoration(
            //     color: color,
            //   ),
            // ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FadeAnimation(
                2,
                Text(
                  subTitle,
                  style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
              ),
              FadeAnimation(
                2.2,
                Text(
                  title,
                  style: GoogleFonts.lato(
                      fontSize: 65,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
