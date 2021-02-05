import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tinder_spotify/personal_details/first_name.dart';

class OTPage extends StatelessWidget {
  static const String otpPage = 'otp_page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.lightBlueAccent,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 17,
                ),
                Text(
                  'OTP',
                  style: TextStyle(fontSize: 47, color: Colors.black),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    OTPUnderline(),
                    SizedBox(
                      width: 10,
                    ),

                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstNamePage()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OTPUnderline extends StatelessWidget {
  const OTPUnderline({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints(minWidth: 30, maxWidth: 60),
        child: TextField(
          
          decoration: InputDecoration(
            
              // border: InputBorder.none,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan,),
              ),
              fillColor: Colors.lightBlueAccent,

              // helperText: "Enter your otp here!",
              focusColor: Colors.lightBlueAccent,
              hoverColor: Colors.lightBlueAccent,
              
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent),
              ),
              hintText: 'Enter your OTP here!',),keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
