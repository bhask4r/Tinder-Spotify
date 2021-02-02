import 'package:flutter/material.dart';
import 'package:tinder_spotify/components/continue_button.dart';
import 'package:tinder_spotify/components/heading_text.dart';
import 'package:tinder_spotify/components/text_underline.dart';
import 'package:tinder_spotify/personal_details/birthday_page.dart';

class FirstNamePage extends StatelessWidget {
  static const String firstName = 'first_name';
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: BackButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeadingText(
                  heading: 'My first name is',
                  size: 40,
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    TextUnderline(  //Widget resides in components/text_underline
                      hintText: 'Enter your name',
                      
                      fontSize: 35,

                    ),
                  ],
                ),
                SizedBox(
                  height: 62,
                ),
                ContinueButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BirthdayPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
