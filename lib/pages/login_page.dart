import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_spotify/auth/google_signin.dart';
import 'package:tinder_spotify/components/container.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tinder_spotify/pages/input_phone_details.dart';
import 'package:tinder_spotify/components/login_buttons.dart';
import 'package:tinder_spotify/personal_details/gender_identification.dart';

class LoginPage extends StatefulWidget {
  static const String loginPage = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  // ignore: unused_element
  _login() async {
    try {
      await _googleSignIn.signIn().then((value) {
        setState(() {
          _isLoggedIn = true;
        });
        Navigator.pushNamed(context, PhoneDetails.phoneDetails);
      });
    } catch (err) {
      print(err);
    }
  }

  // ignore: unused_element
  _logout() {
    _googleSignIn.signOut();
    setState(
      () {
        _isLoggedIn = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: Container(
            padding: const EdgeInsets.only(top: 30, bottom: 60),
            decoration:
                KBoxDecoration, //Wallpaper Resides in components/container
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: Image.asset('images/icon.png'), //Wallpaper
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Vibe',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontFamily: 'StringLabs',
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LoginButtons(
                          heading: 'SIGN IN WITH GOOGLE',
                          logo: AssetImage('images/google.png'),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => GOOGLESIGNIN()),
                            // );
                            _login();
                           
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        LoginButtons(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PhoneDetails()),
                            );
                          },
                          heading: 'LOGIN WITH PHONE NUMBER',
                          logo: AssetImage('images/tele.png'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        LoginButtons(
                          onPressed: null,
                          heading: 'LOG IN WITH FACEBOOK',
                          logo: AssetImage('images/face.png'),
                        )
                      ],
                    ),
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
