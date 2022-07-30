import 'package:flutter/material.dart';
import 'package:outlook/screens/home/list%20of%20rec.dart';
import 'package:outlook/screens/main/components/list_of_recordings.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../animation.dart';
import '../../profile_page/sections/feedback/feedback_section.dart';
import '../../profile_page/sections/recent_work/recent_work_section.dart';
import '2ndbanner.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final url = "https://meet.google.com/che-mknk-pro";

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 650;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: isMobile(context)
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width,
              height: isMobile(context)
                  ? MediaQuery.of(context).size.height
                  : MediaQuery.of(context).size.height * 4,
            ),
            Column(
              children: [
                SizedBox(),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          FadeAnimation(
                            2,
                            Text(
                              "HASWIT",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      InkWell(
                        onTap: () {},
                        child: FadeAnimation(
                          2.2,
                          Text(
                            "Hi Robbie!",
                            style: TextStyle(
                                color: Color.fromARGB(255, 26, 77, 248),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      InkWell(
                        onTap: () {},
                        child: FadeAnimation(
                          2.4,
                          GradientText(
                            'How are you?',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                            colors: [
                              Color.fromARGB(255, 26, 77, 248),
                              Color.fromARGB(255, 226, 109, 255),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      InkWell(
                        onTap: () {},
                        child: FadeAnimation(
                          2.6,
                          Text(
                            "Good morning..",
                            style: TextStyle(
                                color: Color.fromARGB(255, 226, 109, 255),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  color: Color.fromARGB(255, 255, 255, 255),
                  height: isMobile(context)
                      ? MediaQuery.of(context).size.height
                      : MediaQuery.of(context).size.height * 0.1,
                  width: isMobile(context)
                      ? MediaQuery.of(context).size.width
                      : MediaQuery.of(context).size.width,
                ),
                Row(
                  children: [
                    FadeAnimation(
                      3.5,
                      Container(
                        width: isMobile(context)
                            ? MediaQuery.of(context).size.width
                            : MediaQuery.of(context).size.width,
                        height: isMobile(context)
                            ? MediaQuery.of(context).size.height
                            : MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(150.0)),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [
                                0.1,
                                1,
                              ],
                              colors: [
                                Color.fromARGB(255, 255, 130, 63),
                                Color.fromARGB(255, 0, 0, 0),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    FadeAnimation(
                      2,
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 420,
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            FadeAnimation(
                              2,
                              Text(
                                "JOIN NOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 150,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 310,
                                ),
                                FadeAnimation(
                                  2.5,
                                  Text(
                                    "Meeting is going on python tuples",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                SizedBox(width: 310),
                                InkWell(
                                  onTap: () async {
                                    if (!await launch(url))
                                      throw 'Could not launch $url';
                                  },
                                  child: FadeAnimation(
                                    3,
                                    Container(
                                      child: Center(
                                        child: Text(
                                          "Join Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      height: isMobile(context)
                                          ? MediaQuery.of(context).size.height
                                          : MediaQuery.of(context).size.height *
                                              0.1 *
                                              0.7,
                                      width: isMobile(context)
                                          ? MediaQuery.of(context).size.width
                                          : MediaQuery.of(context).size.width *
                                              0.1,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 30),
                                InkWell(
                                  onTap: () {},
                                  child: FadeAnimation(
                                    3.5,
                                    Container(
                                      child: Center(
                                        child: Text(
                                          "View Course",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 3, color: Colors.white),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      height: isMobile(context)
                                          ? MediaQuery.of(context).size.height
                                          : MediaQuery.of(context).size.height *
                                              0.1 *
                                              0.7,
                                      width: isMobile(context)
                                          ? MediaQuery.of(context).size.width
                                          : MediaQuery.of(context).size.width *
                                              0.1,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        width: isMobile(context)
                            ? MediaQuery.of(context).size.width * 0.6
                            : MediaQuery.of(context).size.width *
                                0.7 *
                                1.1 *
                                0.9,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 8,
                              ),
                              // InkWell(
                              //     onTap: () {
                              //       ZoomDrawer.of(context)!.toggle();
                              //     },
                              //     child: Icon(Icons.menu)),

                              FadeAnimation(
                                  2,
                                  InkWell(
                                      onTap: () {}, child: Icon(Icons.search))),
                              SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                homescreen()));
                                  },
                                  child: FadeAnimation(
                                      2.8, Icon(Icons.notifications))),
                              SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: () {},
                                child: FadeAnimation(
                                  3,
                                  Container(
                                    child: Center(
                                      child: Text(
                                        "Log out",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 17, 0, 0),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 3,
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    height: isMobile(context)
                                        ? MediaQuery.of(context).size.height
                                        : MediaQuery.of(context).size.height *
                                            0.1 *
                                            0.7,
                                    width: isMobile(context)
                                        ? MediaQuery.of(context).size.width
                                        : MediaQuery.of(context).size.width *
                                            0.1 *
                                            0.8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          color: Color.fromARGB(255, 255, 255, 255),
                          height: isMobile(context)
                              ? MediaQuery.of(context).size.height
                              : MediaQuery.of(context).size.height * 0.1,
                        ),
                        FadeAnimation(
                          3.5,
                          Image.asset(
                            "assets/images/lmsrequired.webp",
                            height: isMobile(context)
                                ? MediaQuery.of(context).size.height
                                : MediaQuery.of(context).size.height * 0.5,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            secondbanner(),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1.1,
                ),
                RecentWorkSection(),
                FeedbackSection(),
                FadeAnimation(11.5, listofrec()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
