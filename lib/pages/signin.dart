import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_spotify/common_widgets/error_dialog.dart';
import 'package:tinder_spotify/pages/homepage.dart';
import 'package:tinder_spotify/providers/auth_provider.dart';

class SIGNIN extends StatefulWidget {
  @override
  _SIGNINState createState() => _SIGNINState();
}

class _SIGNINState extends State<SIGNIN> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [withEmailPassword()],
      ),
    );
  }

  Widget withEmailPassword() {
    return Form(
      key: _formKey,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Sign In with Email and Password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextFormField(
                controller: _emailcontroller,
                decoration: InputDecoration(
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
                controller: _passwordcontroller,
                decoration: InputDecoration(
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
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  alignment: Alignment.center,
                  child: OutlineButton(
                    child: Text('Sign In'),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        await Provider.of<AuthProvider>(context, listen: false)
                            .signinwithEmailAndPassword(_emailcontroller.text,
                                _passwordcontroller.text);
                        try {
                          //try block for login attempt through provider

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) {
                                return HOMEPAGE();
                              },
                            ),
                          );
                        } catch (e) {
                          print("EXCEPTION");
                          showDialog(
                              context: context,
                              child: ErrorDialog(e.toString()));
                          //catch block for login error
                        }
                      }
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
