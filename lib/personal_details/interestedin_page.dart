import 'package:flutter/material.dart';
import 'package:tinder_spotify/components/heading_text.dart';
import 'package:tinder_spotify/components/gender_button.dart';
import 'package:tinder_spotify/personal_details/add_photos.dart';

class InterestedInPage extends StatefulWidget {
  static const String interestedInPage = 'interestedin_page';
  @override
  _InterestedInPageState createState() => _InterestedInPageState();
}

enum Gender {
  male,
  female,
  everyone,
}
Gender selectedGender;
enum Pressed{
  pressed,
}
Pressed press;

class _InterestedInPageState extends State<InterestedInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                heading: 'I am interested in',
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
                label: 'EVERYONE',
                onPressed: () {
                  setState(() {
                    selectedGender = Gender.everyone;
                    press = Pressed.pressed;
                  });
                },
                colorContainer: selectedGender == Gender.everyone  ? Colors.lightBlueAccent : Colors.white,
                colour: selectedGender == Gender.everyone ? Colors.white : Colors.grey,),
              SizedBox(
                height: 120,
              ),
              GenderButton(
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddPhotos()),
                    );
                },
                label: 'CONTINUE',
                
                colorContainer: press == Pressed.pressed?Colors.lightBlueAccent:Colors.white,
                colour: press == Pressed.pressed?Colors.white:Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
