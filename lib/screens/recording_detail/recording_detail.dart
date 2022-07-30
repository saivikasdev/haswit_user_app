import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:outlook/animation.dart';
import '../../components/side_menu.dart';
import '../main/components/list_of_recordings.dart';
import '../video_page/video_screen.dart';

class recor_detail extends StatefulWidget {
  const recor_detail({Key key}) : super(key: key);

  @override
  State<recor_detail> createState() => _recor_detailState();
}

class _recor_detailState extends State<recor_detail> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Row(
      children: [
        // Once our width is less then 1300 then it start showing errors
        // Now there is no error if our width is less then 1340
        Expanded(
          flex: _size.width > 1340 ? 2 : 4,
          child: FadeAnimation(2, SideMenu()),
        ),
        Expanded(
          flex: _size.width > 1340 ? 3 : 5,
          child: FadeAnimation(2.5, list_of_rec()),
        ),
        Expanded(
          flex: _size.width > 1340 ? 8 : 10,
          child: FadeAnimation(3, video_screen()),
        ),
      ],
    );
  }
}
