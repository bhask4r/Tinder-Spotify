import 'package:flutter/material.dart';
import 'package:tinder_spotify/components/heading_text.dart';
import 'package:tinder_spotify/components/gender_button.dart';
import 'package:tinder_spotify/personal_details/pronouns_page.dart';

class GenderIdentification extends StatefulWidget {
  static const String genderIdentification = 'gender_identification';
  @override
  _GenderIdentificationState createState() => _GenderIdentificationState();
}

enum Gender {
  male,
  female,
}
Gender selectedGender;
enum Pressed{
  pressed,
}
Pressed press;

class _GenderIdentificationState extends State<GenderIdentification> {
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
                  heading: 'I identify as a',
                  size: 40,
                ),
                SizedBox(
                  height: 80,
                ),
                GenderButton(
                  label: 'WOMAN',

                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.female;
                      press = Pressed.pressed;
                    });
                  },
                  colorContainer: selectedGender == Gender.female ? Colors.lightBlueAccent : Colors.white,
                  colour: selectedGender == Gender.female ? Colors.white : Colors.grey,),
                SizedBox(
                  height: 10,
                ),
                GenderButton(

                  label: 'MAN',

                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.male;
                      press = Pressed.pressed;
                    });
                  },
                  colorContainer: selectedGender == Gender.male  ? Colors.lightBlueAccent : Colors.white,
                  colour: selectedGender == Gender.male ? Colors.white : Colors.grey,),
                SizedBox(
                  height: 10,
                ),
                GenderButton(
                  label: 'MORE',
                  colour: Colors.grey,
                ),
                SizedBox(
                  height: 120,
                ),
                GenderButton(

                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PronounsPage() ),);
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
