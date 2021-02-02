import 'package:flutter/material.dart';
import 'package:tinder_spotify/components/heading_text.dart';
import 'package:tinder_spotify/components/gender_button.dart';
import 'package:tinder_spotify/personal_details/sexual_orientation.dart';

class PronounsPage extends StatefulWidget {
  static const String pronounsPage = 'pronouns_page';
  @override
  _PronounsPageState createState() => _PronounsPageState();
}

enum Pronouns {
  he,
  her,
  they,
  custom,
}
Pronouns selectedGender;
enum Pressed{
  pressed,
}
Pressed press;

class _PronounsPageState extends State<PronounsPage> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context)=>MaterialApp(
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
                  heading: 'My Pronouns are',
                  size: 40,
                ),
                SizedBox(
                  height: 80,
                ),
                GenderButton(
                  label: 'SHE/HER/HERS',

                  onPressed: () {
                    setState(() {
                      selectedGender = Pronouns.her;
                      press = Pressed.pressed;
                    });
                  },
                  colorContainer: selectedGender == Pronouns.her ? Colors.lightBlueAccent : Colors.white,
                  colour: selectedGender == Pronouns.her ? Colors.white : Colors.grey,),
                SizedBox(
                  height: 10,
                ),
                GenderButton(

                  label: 'HE/HIM/HIS',

                  onPressed: () {
                    setState(() {
                      selectedGender = Pronouns.he;
                      press = Pressed.pressed;
                    });
                  },
                  colorContainer: selectedGender == Pronouns.he  ? Colors.lightBlueAccent : Colors.white,
                  colour: selectedGender == Pronouns.he ? Colors.white : Colors.grey,),
                SizedBox(
                  height: 10,
                ),
                GenderButton(
                  label: 'THEY/THEM/THEIR',
                  onPressed: () {
                    setState(() {
                      selectedGender = Pronouns.they;
                      press = Pressed.pressed;
                    });
                  },
                  colorContainer: selectedGender == Pronouns.they  ? Colors.lightBlueAccent : Colors.white,
                  colour: selectedGender == Pronouns.they ? Colors.white : Colors.grey,),
                SizedBox(
                  height: 10,
                ),
                GenderButton(
                  label: 'CUSTOM',
                  onPressed: () {
                    setState(() {
                      selectedGender = Pronouns.custom;
                      press = Pressed.pressed;
                    });
                  },
                  colorContainer: selectedGender == Pronouns.custom  ? Colors.lightBlueAccent : Colors.white,
                  colour: selectedGender == Pronouns.custom ? Colors.white : Colors.grey,),
                SizedBox(
                  height: 120,
                ),
                GenderButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SexualOrientation() ),);
                  },
                  label: 'CONTINUE',
                  colorContainer: press == Pressed.pressed?Colors.lightBlueAccent:Colors.white,
                  colour: press == Pressed.pressed?Colors.white:Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
