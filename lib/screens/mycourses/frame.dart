import 'package:flutter/material.dart';
import 'package:outlook/profile_page/components/hireme_card.dart';
import 'package:outlook/profile_page/components/section_title.dart';
import 'package:outlook/profile_page/models/RecentWork.dart';
import 'package:outlook/screens/home/record.dart';
import 'package:outlook/screens/home/recordcard.dart';
import 'package:outlook/screens/mycourses/card.dart';
import 'package:outlook/screens/mycourses/saveddata.dart';
import 'package:outlook/screens/mycourses/title_of_rec.dart';
import 'package:outlook/screens/recording_detail/recording_detail.dart';
import '../../profile_page/constantss.dart';
import '../../profile_page/sections/recent_work/components/recent_work_card.dart';

class mycourse extends StatelessWidget {
  const mycourse({
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
    return InkWell(
      onTap: () => print(Recorddata.length),
      child: Container(
        color: Colors.black12,
        // margin: EdgeInsets.only(top: kDefaultPadding * 6),
        width: double.infinity,
        // just for demo
        // height: 600,
        // decoration: BoxDecoration(
        //   color: Color(0xFFF7E8FF).withOpacity(0.5),
        //   image: DecorationImage(
        //       fit: BoxFit.cover,
        //       image: AssetImage("assets/images/recent_work_bg.png"),
        //       repeat: ImageRepeat.repeat),
        // ),
        child: Column(
          children: [
            titleofrec(
              image: image,
              title: title,
              subTitle: subTitle,
              color: Color(0xFFFFB100),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            SizedBox(
              width: 1110,
              child: Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding * 2,
                children: List.generate(
                  saveddata.length,
                  (inde) => card(
                      index: inde,
                      press: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => recor_detail()));
                      }),
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding * 5),
          ],
        ),
      ),
    );
  }
}
