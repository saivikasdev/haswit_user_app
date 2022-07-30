import 'package:flutter/material.dart';
import 'package:outlook/profile_page/sections/about/about_section.dart';
import 'package:outlook/profile_page/sections/contact/contact_section.dart';
import 'package:outlook/profile_page/sections/feedback/feedback_section.dart';
import 'package:outlook/profile_page/sections/recent_work/recent_work_section.dart';
import 'package:outlook/profile_page/sections/service/service_section.dart';
import 'package:outlook/profile_page/sections/topSection/top_section.dart';

import 'constantss.dart';

class profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
            // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    );
  }
}
