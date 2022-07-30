import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlook/profile_page/sections/topSection/components/menu.dart';

import '../../../constantss.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OverlayEntry entry;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About \nme :",
          style: GoogleFonts.lato(
              fontSize: 60, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: kDefaultPadding * 2),
      ],
    );
  }
}

showoverlay(BuildContext context, entry) {
  OverlayState overlaystate = Overlay.of(context);
  OverlayEntry overlayentry = OverlayEntry(builder: (context) {
    return Material(child: Positioned(top: 100, left: 200, child: Menu()));
  });
  overlaystate.insert(overlayentry);
  // entry = OverlayEntry(
  //   builder: (context) => Positioned(top: 40, left: 40, child: Menu()),
  // );
  // final overlay = Overlay.of(context);
  // overlay.insert(entry);
}
