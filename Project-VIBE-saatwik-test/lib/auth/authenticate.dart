import 'package:flutter/material.dart';
import 'package:tinder_spotify/pages/signin.dart';
import 'package:tinder_spotify/pages/signup.dart';

class FirebaseAth extends StatefulWidget {
  @override
  _FirebaseAthState createState() => _FirebaseAthState();
}

class _FirebaseAthState extends State<FirebaseAth> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.center,
              child: OutlineButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => SIGNIN())); // Pushing Page to sign in
                },
                child: Text('SIGN IN'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.center,
              child: OutlineButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SIGNUP()));
                },
                child: Text('SIGN UP'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void _push(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) {
        return page;
      },
    ),
  );
}
