import 'package:flutter/material.dart';

class res {
  final String name1, link;

  res({
    this.name1,
    this.link,
  });
}

class Email {
  final String image,
      name,
      subject,
      body,
      time,
      description,
      course,
      mentor,
      id,
      duty,
      about;
  final bool isAttachmentAvailable, isChecked;
  final Color tagColor;
  final List<Map<String, String>> resorces;

  Email({
    this.resorces,
    this.duty,
    this.about,
    this.id,
    this.mentor,
    this.time,
    this.course,
    this.isChecked,
    this.image,
    this.description,
    this.name,
    this.subject,
    this.body,
    this.isAttachmentAvailable,
    this.tagColor,
  });
}

List<Email> emails = List.generate(
  demo_data.length,
  (index) => Email(
    resorces: demo_data[index]['resorces'],
    duty: demo_data[index]['duty'],
    about: demo_data[index]['about'],
    id: demo_data[index]['id'],
    mentor: demo_data[index]['mentor'],
    course: demo_data[index]['course'],
    name: demo_data[index]['name'],
    image: demo_data[index]['image'],
    subject: demo_data[index]['subject'],
    description: demo_data[index]['description'],
    isAttachmentAvailable: demo_data[index]['isAttachmentAvailable'],
    isChecked: demo_data[index]['isChecked'],
    tagColor: demo_data[index]['tagColor'],
    time: demo_data[index]['time'],
    body: emailDemoText,
  ),
);

List<res> resorce = List.generate(
  resorces.length,
  (index) => res(
    name1: resorces[index]['name'],
    link: resorces[index]['link'],
  ),
);

List<res> resorce1 = List.generate(
  resorses1.length,
  (index) => res(
    name1: resorses1[index]['name'],
    link: resorses1[index]['link'],
  ),
);

List demo_data = [
  {
    "resources": resorce,
    "duty": duty,
    "about": about,
    "id": "pEx_Lx530tY",
    "mentor": mentor,
    "course": "Flutter",
    "name": "Drop down",
    "image": "assets/images/user_1.png",
    "subject": "Session -21",
    "description":
        "n open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, i",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": null,
    "time": "2:12"
  },
  {
    "resources": resorce1,
    "duty": duty,
    "about": about,
    "id": "t8VTLxMsufU",
    "mentor": mentor,
    "course": "Flutter",
    "name": "Elevated button",
    "image": "assets/images/user_2.png",
    "subject": "session -1",
    "description":
        "n open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, i",
    "isAttachmentAvailable": true,
    "isChecked": true,
    "tagColor": null,
    "time": "15:32"
  },
  {
    "resources": resorce,
    "duty": duty,
    "about": about,
    "id": "pEx_Lx530tY",
    "mentor": mentor,
    "course": "Flutter",
    "name": "Drawer",
    "image": "assets/images/user_3.png",
    "subject": "Session -2",
    "description":
        "n open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, i",
    "isAttachmentAvailable": true,
    "isChecked": false,
    "tagColor": null,
    "time": "14:27",
  },
  {
    "resources": resorce1,
    "duty": duty,
    "about": about,
    "id": "gumM1H4qLUM",
    "mentor": mentor,
    "course": "Flutter",
    "name": "FAB",
    "image": "assets/images/user_4.png",
    "subject": "Session -3",
    "description": "some text",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": Color(0xFF23CF91),
    "time": "10:43"
  },
  {
    "resources": resorce,
    "duty": duty,
    "about": about,
    "id": "pEx_Lx530tY",
    "mentor": mentor,
    "course": "Flutter",
    "name": "FAB",
    "image": "assets/images/user_4.png",
    "subject": "Session -4",
    "description": "from a single codebase.[4]First  development kit",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": Color(0xFF23CF91),
    "time": "10:43"
  },
  {
    "resources": resorce1,
    "duty": duty,
    "about": about,
    "id": "t8VTLxMsufU",
    "mentor": mentor,
    "course": "Flutter",
    "name": "FAB",
    "image": "assets/images/user_4.png",
    "subject": "Session -5",
    "description":
        "id, iOS, Linux, macOS, Windows, Google Fuchsia,[3] and the web from a single codebase.[4]First  development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia,[3] and the web from a sing dev",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": Color(0xFF23CF91),
    "time": "10:43"
  },
  {
    "resources": resorce,
    "duty": duty,
    "about": about,
    "id": "gumM1H4qLUM",
    "mentor": mentor,
    "course": "Flutter",
    "name": "FAB",
    "image": "assets/images/user_4.png",
    "subject": "Session -6",
    "description":
        "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia,[3] and the web from a single codebase.[4]First  development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia,[3] and the web from a sing development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia,[3] and the web from a sing development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia,[3] and the web from a singdescribed in 2015,[5][6] Flutter was released in May 2017.[1]",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": Color(0xFF23CF91),
    "time": "4:20"
  },
];

String about = emailDemoText;
String duty = "CEO of haswit";
String emailDemoText =
    "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia,[3] and the web from a single codebase.[4]First  development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia,[3] and the web from a sing development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia,[3] and the web from a sing development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia,[3] and the web from a singdescribed in 2015,[5][6] Flutter was released in May 2017.[1]";

String mentor = "Mohammed muzafer";
List  resorces = [
  {"name": "github", "link": "https://t.me/joinchat/Kc_ZkBsijqXJDWrtnEv5L"},
  {"name": "todays code", "link": "https://t.me/joinchat/Kc_ZkBsijqXJDWrtnEv5L"}
];

List resorses1 = [
  {"name": "linked in", "link": "https://t.me/joinchat/Kc_ZkBsijqXJDWrtnEv5L"},
  {
    "name": "before days code",
    "link": "https://t.me/joinchat/Kc_ZkBsijqXJDWrtnEv5L"
  }
];
