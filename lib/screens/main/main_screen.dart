import 'package:flutter/material.dart';
import 'package:outlook/components/side_menu.dart';
import 'package:outlook/constants.dart';
import 'package:outlook/profile_page/profile.dart';
import 'package:outlook/responsive.dart';
import 'package:outlook/screens/home/meetingbanner.dart';
import 'package:outlook/screens/video_page/video_screen.dart';
import '../../profile_page/sections/topSection/components/menu.dart';
import '../recording_detail/recording_detail.dart';
import 'components/list_of_recordings.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      OverlayState overlayState = Overlay.of(context);
      OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
        return Positioned(
            top: MediaQuery.of(context).size.height - 120,
            left: MediaQuery.of(context).size.width / 2 - 400,
            child: Material(color: Colors.transparent, child: Menu()));
      });

      overlayState?.insert(overlayEntry);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: list_of_rec(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: list_of_rec(),
            ),
            Expanded(
              flex: 9,
              child: video_screen(),
            ),
          ],
        ),
        desktop: homescreen(),
      ),
    );
  }
}
