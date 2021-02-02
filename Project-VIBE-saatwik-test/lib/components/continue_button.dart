import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  ContinueButton({this.onPressed});
  final Function onPressed;



  @override
  Widget build(BuildContext context) {
    return FlatButton(

      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF29ACF1),
          borderRadius: BorderRadius.all(Radius.circular(30),),
        ),

        child: Center(
          child: Text(
            'Continue',
            style: TextStyle(fontSize: 24,color: Colors.white),
          ),
        ),
      ),
    );
  }
}


