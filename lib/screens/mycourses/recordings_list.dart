import 'package:flutter/material.dart';
import 'package:outlook/screens/home/list%20of%20rec.dart';
import 'package:outlook/screens/mycourses/frame.dart';

class mycourses extends StatefulWidget {
  const mycourses({Key key}) : super(key: key);

  @override
  State<mycourses> createState() => _mycoursesState();
}

class _mycoursesState extends State<mycourses> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(150.0)),
                    gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0,
                    0.2,
                    0.4,
                    0.6,
                    0.8,
                    1,
                  ],
                  colors: [
                    Color.fromARGB(255, 255, 208, 0),
                    Color.fromARGB(255, 255, 0, 0),
                    Color.fromARGB(255, 255, 0, 149),
                    Color.fromARGB(255, 0, 102, 255),
                    Color.fromARGB(255, 212, 0, 255),
                    Color.fromARGB(255, 0, 0, 0),
                  ],
                )),
                child: Column(
                  children: [
                    mycourse(
                      image: "assets/images/flutter.png",
                      title: "Continue watching",
                      subTitle: "Flutter",
                    ),
                    mycourse(
                      image: "assets/images/python.png",
                      title: "Continue watching",
                      subTitle: "Python",
                    ),
                    mycourse(
                      image: "assets/images/html (1).png",
                      title: "Continue watching",
                      subTitle: "Flutter",
                    ),
                    mycourse(
                      image: "assets/images/flutter.png",
                      title: "Continue watching",
                      subTitle: "Flutter",
                    ),
                  ],
                ))));
  }
}
