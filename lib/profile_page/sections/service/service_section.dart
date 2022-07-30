import 'package:flutter/material.dart';
import 'package:outlook/animation.dart';
import 'package:outlook/profile_page/components/section_title.dart';
import 'package:outlook/profile_page/models/Service.dart';

import '../../constantss.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000), 
            title: "A PAGE",
            subTitle: "GO TO...",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(services.length,
                (index) => FadeAnimation(5, ServiceCard(index: index))),
          )
        ],
      ),
    );
  }
}
