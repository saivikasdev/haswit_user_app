import 'package:flutter/material.dart';
 
class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}
 
class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Overlay"),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                OverlayState overlayState = Overlay.of(context);
                OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
                  return Positioned(
                      top: 50,
                      left: 20,
                      child: Material(
                          child: Text(
                        "Hello My World",
                        style: TextStyle(fontSize: 30),
                      )));
                });
                OverlayEntry overlayEntry2 = OverlayEntry(builder: (context) {
                  return Positioned(
                      bottom: 50,
                      right: 20,
                      child: Material(
                          child: Text(
                        "I am flutter dev",
                        style: TextStyle(fontSize: 30),
                      )));
                });
 
                overlayState?.insert(overlayEntry);
                overlayState?.insert(overlayEntry2);
                await Future.delayed(Duration(seconds: 3));
                overlayEntry.remove();
                overlayEntry2.remove();
              },
              child: Text("Show Overlay")),
        ));
  }
}