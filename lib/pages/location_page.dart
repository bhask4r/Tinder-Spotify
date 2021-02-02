import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  static const String locationPage = 'location_page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(child: Image.asset('images/location.png')),
        ),
      ),
    );
  }
}
