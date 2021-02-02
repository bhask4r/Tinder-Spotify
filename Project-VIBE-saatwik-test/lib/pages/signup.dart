import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tinder_spotify/pages/homepage.dart';

class SIGNUP extends StatefulWidget {
  @override
  _SIGNUPState createState() => _SIGNUPState();
}

class _SIGNUPState extends State<SIGNUP> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _displayname = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formkey,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _displayname,
                    decoration: const InputDecoration(
                      labelText: "Full Name",
                    ),
                    validator: (String val) {
                      if (val.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _emailcontroller,
                    decoration: const InputDecoration(
                      labelText: "Email",
                    ),
                    validator: (String val) {
                      if (val.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: "Password",
                    ),
                    validator: (String val) {
                      if (val.isEmpty) {
                        return "Please enter some text";
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Container(
                      child: OutlineButton(
                        onPressed: () async {
                          if (_formkey.currentState.validate()) {
                            _signupaccount();
                          }
                        },
                        child: Text('SIGN UP'),
                      ),
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

  void _signupaccount() async {
    final User user = (await _auth.createUserWithEmailAndPassword(
            email: _emailcontroller.text, password: _passwordController.text))
        .user;
    if (user != null) {
      if (!user.emailVerified) {
        await user.sendEmailVerification();
      }
      await user.updateProfile(displayName: _displayname.text);
      final user1 = _auth.currentUser;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return HOMEPAGE();
          },
        ),
      );
    }
  }
}
