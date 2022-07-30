import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlook/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';
import '../../../data_handling/demo_data.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: INDEX.sessionindex,
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Row(
          children: [
            // We need this back button on mobile only
            if (Responsive.isMobile(context)) BackButton(),
            Text(
              "My courses",
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "/",
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            SizedBox(
              width: 5,
            ),

            Text(
              emails[value].course,
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            SizedBox(
              width: 5,
            ),

            Text(
              "/",
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            SizedBox(
              width: 5,
            ),

            Text(
              emails[value].name,
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(96, 0, 0, 0)),
            ),

            Spacer(),
            if (Responsive.isDesktop(context))
              IconButton(
                icon: WebsafeSvg.asset(
                  "assets/Icons/Markup.svg",
                  width: 24,
                ),
                onPressed: () {},
              ),
            IconButton(
              icon: WebsafeSvg.asset(
                "assets/Icons/forward.svg",
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
