import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  HeadingText({this.heading,this.size});
  final String heading;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
        fontSize: size,
        color: Colors.black,
      ),
    );
  }
}
