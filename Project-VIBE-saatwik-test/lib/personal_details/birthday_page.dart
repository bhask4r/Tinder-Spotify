import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tinder_spotify/components/continue_button.dart';
import 'package:tinder_spotify/components/heading_text.dart';
import 'package:tinder_spotify/components/underline_text.dart';
import 'package:tinder_spotify/personal_details/gender_identification.dart';

class BirthdayPage extends StatefulWidget {
  static const String birthdayPage = 'birthday_page';

  @override
  _BirthdayPageState createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage> {
  
  void _value2Changed(bool value) => setState(() => _value2 = value);

  bool _value2 = false;

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
              children: [
                HeadingText(
                  heading: 'My birthday is',
                  size: 40,
                ),
                SizedBox(
                  height: 60,
                ),
                //Text('dd/mm/yyyy', style: TextStyle(fontSize: 30,color: Color(0xFF6D6D6D),),),
                UnderlineText(
                  hintText: 'dd/mm/yyyy',
                  fontSize: 30,
                ),
                GestureDetector(
                  child: Icon(Icons.calendar_today),
                  onTap: () {

                    //  Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => GenderIdentification()),
                    // );
                  },
                ),
                new CheckboxListTile(
                  value: _value2,
                  onChanged: _value2Changed,
                  title: new Text('Your age will be public'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Color(0xFF29ACF1),
                ),
                SizedBox(
                  height: 15,
                ),
                // Text(
                //   'Your age will be public',
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: Color(0xFF6D6D6D),
                // DateTimePicker(
                //   icon: Icon(Icons.date_range),
                // ),
                //   ),
                // ),
                SizedBox(
                  height: 65,
                ),
                ContinueButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GenderIdentification()),
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
