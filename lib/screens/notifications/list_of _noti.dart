import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class notifications extends StatefulWidget {
  const notifications({Key key}) : super(key: key);

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 650;
    return Material(
      child: Scaffold(
        backgroundColor: Color(0xFF21BFBD),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 125.0,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100.0, top: 100),
              child: Row(
                children: <Widget>[
                  Text('NOTIFICATIONS',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 85.0)),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 6),
            Container(
              height: MediaQuery.of(context).size.height - 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(250.0)),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                          top: 45.0,
                          left: MediaQuery.of(context).size.width / 12),
                      child: Container(
                          height: MediaQuery.of(context).size.height - 250.0,
                          child: ListView(children: [
                            _buildFoodItem('assets/images/flutter.png',
                                'Meeting started', 'Flutter'),
                            _buildFoodItem('assets/images/html (1).png',
                                'Meeting started', 'python'),
                            _buildFoodItem('assets/images/hand.png',
                                'Try new intership at wipro', 'Tap for more'),
                            _buildFoodItem('assets/images/flutter.png',
                                'Meeting started', 'Flutter'),
                            _buildFoodItem('assets/images/hand.png',
                                ' new JOB offers with flutter', 'Tap for more'),
                            _buildFoodItem('assets/images/html (1).png',
                                'Meeting started', 'python'),
                            _buildFoodItem('assets/images/html (1).png',
                                'Meeting started', 'HTML'),
                            _buildFoodItem('assets/images/html (1).png',
                                'Meeting started', 'python'),
                            _buildFoodItem('assets/images/hand.png',
                                ' new JOB offers with flutter', 'Tap for more'),
                            _buildFoodItem('assets/images/html (1).png',
                                'Meeting started', 'Flutter'),
                            _buildFoodItem('assets/images/flutter.png',
                                'Meeting started', 'Flutter'),
                            _buildFoodItem('assets/images/html (1).png',
                                'Meeting started', 'HTML'),
                          ]))),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: <Widget>[
                  //     Container(
                  //       height: 65.0,
                  //       width: 60.0,
                  //       decoration: BoxDecoration(
                  //         border: Border.all(
                  //             color: Colors.grey,
                  //             style: BorderStyle.solid,
                  //             width: 1.0),
                  //         borderRadius: BorderRadius.circular(10.0),
                  //       ),
                  //       child: Center(
                  //         child: Icon(Icons.search, color: Colors.black),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 65.0,
                  //       width: 60.0,
                  //       decoration: BoxDecoration(
                  //         border: Border.all(
                  //             color: Colors.grey,
                  //             style: BorderStyle.solid,
                  //             width: 1.0),
                  //         borderRadius: BorderRadius.circular(10.0),
                  //       ),
                  //       child: Center(
                  //         child:
                  //             Icon(Icons.shopping_basket, color: Colors.black),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 65.0,
                  //       width: 120.0,
                  //       decoration: BoxDecoration(
                  //           border: Border.all(
                  //               color: Colors.grey,
                  //               style: BorderStyle.solid,
                  //               width: 1.0),
                  //           borderRadius: BorderRadius.circular(10.0),
                  //           color: Color(0xFF1C1428)),
                  //       child: Center(
                  //           child: Text('Checkout',
                  //               style: TextStyle(
                  //                   fontFamily: 'Montserrat',
                  //                   color: Colors.white,
                  //                   fontSize: 15.0))),
                  //     )
                  //   ],
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
        child: InkWell(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => DetailsPage(heroTag: imgPath, foodName: foodName, foodPrice: price)
              // ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 65.0,
                          width: 65.0)),
                  SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodName,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                              color: Colors.black),
                        ),
                        Text(
                          price,
                          style: GoogleFonts.lato(
                              fontSize: 17, color: Colors.black87),
                        )
                      ])
                ])),
                Row(
                  children: [
                    Text(
                      "18:00",
                      style: GoogleFonts.lato(
                          fontSize: 11, color: Color.fromARGB(221, 37, 36, 36)),
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.black,
                        onPressed: () {}),
                  ],
                )
              ],
            )));
  }
}
