import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlook/profile_page/profile.dart';
import 'package:outlook/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants.dart';
import '../extensions.dart';
import 'side_menu_item.dart';
import 'tags.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
        color: kBgLightColor,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "HASWIT",
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),

                    // We don't want to show this close button on Desktop mood
                    if (!Responsive.isDesktop(context)) CloseButton(),
                  ],
                ),

                // Menu Items
                // SideMenuItem(
                //   press: () {},
                //   title: "Home",
                //   iconSrc: "assets/Icons/home.svg",
                //   isActive: false,
                // ),
                // SideMenuItem(
                //   press: () {},
                //   title: "My courses",
                //   iconSrc: "assets/Icons/favourite.svg",
                //   isActive: true,
                //   itemCount: 3,
                // ),
                // SideMenuItem(
                //   press: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => profilepage()),
                // );
                //   },
                //   title: "Saved Items",
                //   iconSrc: "assets/Icons/save.svg",
                //   isActive: false,
                // ),
                // SideMenuItem(
                //   press: () {},
                //   title: "Profile",
                //   iconSrc: "assets/Icons/man (1).svg",
                //   isActive: false,
                //   showBorder: false,
                // ),

                SizedBox(height: kDefaultPadding * 2),
                // Tags
                Tags(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
