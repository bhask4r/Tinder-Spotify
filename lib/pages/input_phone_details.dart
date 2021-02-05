import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_spotify/pages/otp_page.dart';
import 'package:tinder_spotify/components/heading_text.dart';
import 'package:tinder_spotify/components/text_underline.dart';
import 'package:tinder_spotify/components/continue_button.dart';

class PhoneDetails extends StatelessWidget {
  static const String phoneDetails = 'input_phone_details';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: BackButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 19,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  HeadingText(
                    heading: 'Continue',
                    size: 40,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        constraints: BoxConstraints(minWidth: 30, maxWidth: 60),
                        child: TextField(
                          decoration: InputDecoration(
                              // border: InputBorder.none,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan),
                              ),
                              fillColor: Colors.lightBlueAccent,
                              focusColor: Colors.lightBlueAccent,
                              hoverColor: Colors.lightBlueAccent,
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.lightBlueAccent),
                              ),
                              hintText: ' + 91'),
                          keyboardType: TextInputType.number,
                        ),
                      ),

                      SizedBox(
                        width: 25,
                      ),
                      TextUnderline(hintText: 'Enter your number here!',fontSize: 16),
                      // TextField(decoration: InputDecoration(labelText: 'd'),keyboardType: TextInputType.number,),
                      // Container(
                      //   child: TextField(
                      //     decoration: InputDecoration(
                      //       labelText: 's',
                      //     ),
                      //     keyboardType: TextInputType.number,
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  Text(
                    'When you tap "continue", Vibe will send a text with verification code. Message and data rates may apply. The verified phone number can be used to log in.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ContinueButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OTPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
