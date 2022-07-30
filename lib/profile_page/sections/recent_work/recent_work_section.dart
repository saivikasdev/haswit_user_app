import 'package:flutter/material.dart';
import 'package:outlook/animation.dart';
import 'package:outlook/profile_page/components/hireme_card.dart';
import 'package:outlook/profile_page/components/section_title.dart';
import 'package:outlook/profile_page/models/RecentWork.dart';

import '../../constantss.dart';
import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // just for demo
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg.jpg"),
          opacity: 0.5,
        ),
      ),
      child: Column(
        children: [
          SectionTitle(
            title: "You may watch",
            subTitle: "Sessions",
            color: Color(0xFFFFB100),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                recentWorks.length,
                (index) => FadeAnimation(
                    9, RecentWorkCard(index: index, press: () {})),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
