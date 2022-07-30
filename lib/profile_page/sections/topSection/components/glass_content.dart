import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:outlook/animation.dart';

import '../../../constantss.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeAnimation(
                    4.5,
                    Text(
                      "Hello There!",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  FadeAnimation(
                    5,
                    Text(
                      "Robbie \nRutherford",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                  ),
                  // Text(
                  //   "Creative Design Director",
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .headline5
                  //       .copyWith(color: Colors.white),
                  // )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              FadeAnimation(
                4,
                CircleAvatar(
                  radius: 200, // Image radius
                  backgroundImage: AssetImage('assets/images/people.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
