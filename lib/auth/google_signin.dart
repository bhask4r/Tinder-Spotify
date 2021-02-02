import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../pages/input_phone_details.dart';

class GOOGLESIGNIN extends StatefulWidget {
  @override
  _GOOGLESIGNINState createState() => _GOOGLESIGNINState();
}

class _GOOGLESIGNINState extends State<GOOGLESIGNIN> {
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
    return Scaffold(
      body:
      _login(),
    );
  }
}
