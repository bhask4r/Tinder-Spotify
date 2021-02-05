import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_spotify/components/gender_button.dart';
import 'package:tinder_spotify/components/heading_text.dart';
import 'package:tinder_spotify/personal_details/interestedin_page.dart';

class SexualOrientation extends StatefulWidget {
  static const String sexualOrientation = 'sexual_orientation';
  @override
  _SexualOrientationState createState() => _SexualOrientationState();
}

class _SexualOrientationState extends State<SexualOrientation> {
  void _value2Changed(bool value) => setState(() => _value2 = value);
  void _value1Changed(bool value) => setState(() => _value1 = value);

  void _value3Changed(bool value) => setState(() => _value3 = value);

  void _value4Changed(bool value) => setState(() => _value4 = value);

  void _value5Changed(bool value) => setState(() => _value5 = value);

  void _value6Changed(bool value) => setState(() => _value6 = value);

  void _value7Changed(bool value) => setState(() => _value7 = value);

  void _value8Changed(bool value) => setState(() => _value8 = value);

  bool _value2 = false;
  bool _value1 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;
  bool _value7 = false;
  bool _value8 = false;

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
                  heading: 'My sexual            orientation is',
                  size: 35,
                ),
                SizedBox(
                  height: 6,
                ),
                // Text(
                //   'You may select up to 3',
                //   style: TextStyle(color: Colors.grey, fontSize: 20),
                // ),
                SizedBox(
                  height: 1,
                ),
                new CheckboxListTile(
                  value: _value1,
                  onChanged: _value1Changed,
                  title: new Text('Straight'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Color(0xFF29ACF1),
                ),
                new CheckboxListTile(
                  value: _value2,
                  onChanged: _value2Changed,
                  title: new Text('Gay'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Color(0xFF29ACF1),
                ),
                new CheckboxListTile(
                  value: _value3,
                  onChanged: _value3Changed,
                  title: new Text('Lesbian'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Color(0xFF29ACF1),
                ),
                new CheckboxListTile(
                  value: _value2,
                  onChanged: _value2Changed,
                  title: new Text('Bisexual'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Color(0xFF29ACF1),
                ),
                new CheckboxListTile(
                  value: _value4,
                  onChanged: _value4Changed,
                  title: new Text('Asexual'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Color(0xFF29ACF1),
                ),
                new CheckboxListTile(
                  value: _value5,
                  onChanged: _value5Changed,
                  title: new Text('Demisexual'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Color(0xFF29ACF1),
                ),
                new CheckboxListTile(
                  value: _value6,
                  onChanged: _value6Changed,
                  title: new Text('Pansexual'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Color(0xFF29ACF1),
                ),
                new CheckboxListTile(
                  value: _value7,
                  onChanged: _value7Changed,
                  title: new Text('Queer'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Color(0xFF29ACF1),
                ),
                new CheckboxListTile(
                  value: _value8,
                  onChanged: _value8Changed,
                  title: new Text('Aromantic'),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Color(0xFF29ACF1),
                ),
                GenderButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InterestedInPage()),
                    );
                  },
                  label: 'CONTINUE',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
