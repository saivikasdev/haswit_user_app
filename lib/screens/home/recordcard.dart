import 'package:flutter/material.dart';
import 'package:outlook/profile_page/models/RecentWork.dart';
import 'package:outlook/screens/home/record.dart';

import '../../profile_page/constantss.dart';

class recordcard extends StatefulWidget {
  // just press "Command + ."
  const recordcard({
    Key key,
    this.index,
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _recordcardState createState() => _recordcardState();
}

class _recordcardState extends State<recordcard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(Recorddata[widget.index].image),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(Recorddata[widget.index].category.toUpperCase()),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      Recorddata[widget.index].title,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      "watch now >",
                      style: TextStyle(decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
