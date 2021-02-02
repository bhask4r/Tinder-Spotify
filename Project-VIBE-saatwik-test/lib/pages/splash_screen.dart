import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String splashScreen = 'splash_screen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/back.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('images/icon.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Vibe',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontFamily: 'StringLabs',
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
