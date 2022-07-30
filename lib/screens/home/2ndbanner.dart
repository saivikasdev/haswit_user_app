import 'package:flutter/material.dart';
import 'package:outlook/animation.dart';

class secondbanner extends StatelessWidget {
  const secondbanner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 650;
    return Column(
      children: [
        SizedBox(
          height: isMobile(context)
              ? MediaQuery.of(context).size.height
              : MediaQuery.of(context).size.height * 0.7,
          width: isMobile(context)
              ? MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.width,
        ),
        Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 200,
                    ),
                    FadeAnimation(
                      3,
                      Text(
                        "HASWIT",
                        style: TextStyle(
                            color: Color.fromARGB(255, 41, 17, 17),
                            fontSize: 80,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 200,
                    ),
                    FadeAnimation(
                      3.4,
                      Text(
                        "Hand shake with IT sector",
                        style: TextStyle(
                            color: Color.fromARGB(255, 41, 17, 17),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 200,
            ),
            FadeAnimation(
              3.2,
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset("assets/images/money.jpg"),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "-- Low cost --",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: isMobile(context)
                    ? MediaQuery.of(context).size.height
                    : MediaQuery.of(context).size.height * 0.3 * 0.9,
                width: isMobile(context)
                    ? MediaQuery.of(context).size.width
                    : MediaQuery.of(context).size.width * 0.1,
              ),
            ),
            SizedBox(
              width: 200,
            ),
            FadeAnimation(
              3.4,
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      "assets/images/job.jpg",
                      height: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "-- Job guarantee --",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: isMobile(context)
                    ? MediaQuery.of(context).size.height
                    : MediaQuery.of(context).size.height * 0.3 * 0.9,
                width: isMobile(context)
                    ? MediaQuery.of(context).size.width
                    : MediaQuery.of(context).size.width * 0.1,
              ),
            ),
            SizedBox(
              width: 200,
            ),
            FadeAnimation(
              3.6,
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset("assets/images/time.jpg"),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "-- 24/7 Doughts --",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: isMobile(context)
                    ? MediaQuery.of(context).size.height
                    : MediaQuery.of(context).size.height * 0.3 * 0.9,
                width: isMobile(context)
                    ? MediaQuery.of(context).size.width
                    : MediaQuery.of(context).size.width * 0.1,
              ),
            )
          ],
        ),
      ],
    );
  }
}
