import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HOMEPAGE extends StatefulWidget {
  const HOMEPAGE();
  @override
  _HOMEPAGEState createState() => _HOMEPAGEState();
}

class _HOMEPAGEState extends State<HOMEPAGE> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final user = _auth.currentUser;
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                user.displayName,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: OutlineButton(
                onPressed: () {},
                // onPressed: () async {
                //   _signOut().whenComplete(
                //     () {
                //       Navigator.of(context).pushReplacement(
                //         MaterialPageRoute(
                //           builder: (_) {
                //             return FirebaseAth();
                //           },
                //         ),
                //       );
                //     },
                //   );
                // },
                child: Text('LOGOUT'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future _signOut() async {
    await _auth.signOut();
  }
}
