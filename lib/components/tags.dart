import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlook/screens/video_page/video_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants.dart';
import '../data_handling/demo_data.dart';

class Tags extends StatefulWidget {
  const Tags({
    Key key,
  }) : super(key: key);

  @override
  State<Tags> createState() => _TagsState();
}

List<bool> selected = [true, false, false, false];

class _TagsState extends State<Tags> {
  List<List> icon = [
    ["assets/Icons/Markup.svg", "Description"],
    ["assets/Icons/chat.svg", "Discussion"],
    ["assets/Icons/github.svg", "Resources"],
    ["assets/Icons/man.svg", "Instructor"],
  ];

  void select(int n) {
    for (int i = 0; i < 4; i++) {
      if (i == n) {
        selected[i] = true;
      } else {
        selected[i] = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Color color = Color.fromARGB(255, 168, 168, 168);

    return Column(
      children: [
        Row(
          children: [
            WebsafeSvg.asset("assets/Icons/Angle down.svg", width: 16),
            SizedBox(width: kDefaultPadding / 4),
            WebsafeSvg.asset("assets/Icons/flutter.svg", width: 20),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              "flutter",
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: kGrayColor),
            ),
            Spacer(),
            MaterialButton(
              padding: EdgeInsets.all(10),
              minWidth: 40,
              onPressed: () {},
              child: CircleAvatar(
                maxRadius: 24,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(emails[3].image),
              ),
            )
          ],
        ),
        SizedBox(height: kDefaultPadding / 2),
        Row(
          children: [
            Column(
              children: icon
                  .map(
                    (e) => buildTag(
                      context,
                      selected: selected[icon.indexOf(e)],
                      e: e,
                      onTap: () {
                        setState(() {
                          select(icon.indexOf(e));
                        });
                        INDEX.index.value = icon.indexOf(e);
                        print(INDEX.index.value);
                        // print(e);
                        // print(icon.indexOf(e));
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ],
    );
  }

  InkWell buildTag(
    BuildContext context, {
    @required List<dynamic> e,  
    @required Function onTap,
    @required bool selected,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding * 1.5, 10, 0, 10),
        child: Row(
          children: [
            WebsafeSvg.asset(
              e[0], height: 20,
              color:
                  selected ? Colors.black : Color.fromARGB(255, 167, 166, 166),
              // color: color
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              e[1],
              style: GoogleFonts.lato(
                fontSize: 15,
                color: selected
                    ? Colors.black
                    : Color.fromARGB(255, 167, 166, 166),
              ),
            ),
            SizedBox(width: kDefaultPadding / 2),
          ],
        ),
      ),
    );
  }
}
