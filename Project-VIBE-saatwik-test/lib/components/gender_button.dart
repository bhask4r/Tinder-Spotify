import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  GenderButton({this.label,this.colour,this.onPressed,this.colorContainer});
  final String label;
  final Color colour;
  final Function onPressed;
  final Color colorContainer;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: colorContainer,
          border: Border.all(color: Colors.grey,width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(30),),
        ),
        child: Center(
          child: Text(label,style: TextStyle(color: colour,fontSize: 27),),
        ),
      ),
    );
  }
}