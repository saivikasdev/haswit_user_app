import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlook/data_handling/demo_data.dart';
import 'package:outlook/recording_details/description.dart';
import 'package:outlook/recording_details/discussion.dart';
import 'package:outlook/recording_details/instructor.dart';
import 'package:outlook/recording_details/resources.dart';
import 'package:outlook/screens/main/components/recording_card.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/video_header.dart';

class video_screen extends StatefulWidget {
  const video_screen({
    this.index,
    Key key,
  }) : super(key: key);

  final int index;

  @override
  State<video_screen> createState() => _video_screenState();
}

class _video_screenState extends State<video_screen> {
  YoutubePlayerController youtubePlayerController;
  TextEditingController youtubeLink = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    int i = 0;
    List<dynamic> pages = [
      description(
        about: emailDemoText,
      ),
      discussion(),
      resources(),
      mentor_details(
        mentor: "Mohammed muzafer",
        duty: "CEO of haswit foundation",
        about: emailDemoText,
      ),
    ];
    return ValueListenableBuilder(
      valueListenable: INDEX.sessionindex,
      builder: (context, value, child) => Scaffold(
        body: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              children: [
                Header(),
                Divider(thickness: 1),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(kDefaultPadding),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => i++,
                          child: SizedBox(
                            child: WebsafeSvg.asset(
                              "assets/Icons/flutter.svg",
                              height: 60,
                            ),
                          ),
                        ),
                        SizedBox(width: kDefaultPadding),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            text: emails[value].name,
                                            style: GoogleFonts.lato(
                                                fontSize: 40,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87),
                                          ),
                                        ),
                                        Text(
                                          "Mentor :${emails[value].mentor}",
                                          style: GoogleFonts.lato(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black38),
                                        )
                                      ],
                                    ),
                                  ),
                                  // SizedBox(width: kDefaultPadding / 2),
                                  Spacer(),
                                  Text(
                                    emails[value].time,
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              ),
                              SizedBox(height: kDefaultPadding),
                              SizedBox(
                                height: 600,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: player()),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Divider(thickness: 1),
                              //  pages[value],
                              pagez(),
                              Divider(thickness: 1),
                              SizedBox(
                                height: 120,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class player extends StatefulWidget {
  const player({Key key}) : super(key: key);

  @override
  State<player> createState() => _playerState();
}

class _playerState extends State<player> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: emails[1].id,
    params: YoutubePlayerParams(
      // playlist: ['nPt8bK2gbaU', 'dEa9njREtPQ'],
      showControls: true,
      showFullscreenButton: true,
    ),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: INDEX.sessionindex,
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(0),
        child: YoutubePlayerIFrame(
          controller: YoutubePlayerController(
            initialVideoId: emails[value].id,
            params: YoutubePlayerParams(
              playlist: [
                emails[value].id,
              ],
              showControls: true,
              showFullscreenButton: true,
            ),
          ),
          aspectRatio: 18 / 4,
        ),
      ),
    );
  }
}

class pagez extends StatefulWidget {
  const pagez({Key key}) : super(key: key);

  @override
  State<pagez> createState() => _pagezState();
}

class _pagezState extends State<pagez> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> pages = [
      description(
        about: emailDemoText,
      ),
      discussion(),
      resources(),
      mentor_details(
        mentor: "Mohammed muzafer",
        duty: "CEO of haswit foundation",
        about: emailDemoText,
      ),
    ];
    return ValueListenableBuilder(
      valueListenable: INDEX.index,
      builder: (context, value, child) => pages[value],
    );
  }
}
