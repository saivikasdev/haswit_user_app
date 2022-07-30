import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlook/animation.dart';
import 'package:outlook/profile_page/components/default_button.dart';
import 'package:outlook/profile_page/components/hireme_card.dart';
import '../../components/my_outline_button.dart';
import '../../constantss.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeAnimation(4.2, AboutTextWithSign()),
              Expanded(
                child: FadeAnimation(
                  4.4,
                  AboutSectionText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  ),
                ),
              ),
              FadeAnimation(4.6, ExperienceCard(numOfExp: "03")),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Transform.translate(
                        offset: Offset(0, -80),
                        child: FadeAnimation(
                          4.7,
                          HireMeCard(
                            text: "923932373",
                            icon: "assets/images/phone.jpg",
                            color: Color.fromARGB(255, 255, 0, 0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Transform.translate(
                        offset: Offset(0, -80),
                        child: FadeAnimation(
                          4.8,
                          HireMeCard(
                            text: "venugopal@gmail.com",
                            icon: "assets/images/email.png",
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Transform.translate(
                        offset: Offset(0, -80),
                        child: FadeAnimation(
                          4.9,
                          HireMeCard(
                            text: "venudev.git",
                            icon: "assets/images/github.png",
                            color: Color.fromARGB(255, 76, 0, 255),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Transform.translate(
                        offset: Offset(0, -80),
                        child: FadeAnimation(
                          5,
                          HireMeCard(
                            text: "7382393938",
                            icon: "assets/images/whatsapp.png",
                            color: Color.fromARGB(255, 255, 0, 85),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Transform.translate(
                        offset: Offset(0, -80),
                        child:
                            // child: HireMeCard(
                            //   text:
                            //       "Cecilia Chapman 711-2880 \nNulla St. Mankato Mississi\nppi 96522",
                            //   icon: "assets/images/address.png",
                            //   color: Color.fromARGB(255, 60, 255, 0),
                            // ),
                            FadeAnimation(
                          5.3,
                          Container(
                            height: 40,
                            // padding: EdgeInsets.all(kDefaultPadding * 2),
                            constraints: BoxConstraints(maxWidth: 310),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 50),
                                  blurRadius: 50,
                                  color: Colors.white.withOpacity(0.10),
                                )
                              ],
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Image.asset("assets/images/address.png",
                                    height: 20, width: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: kDefaultPadding),
                                  child: SizedBox(
                                    height: 30,
                                    child: VerticalDivider(),
                                  ),  
                                ),
                                Text(
                                  "Cecilia Chapman 711-20...",
                                  overflow: TextOverflow.visible,
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
