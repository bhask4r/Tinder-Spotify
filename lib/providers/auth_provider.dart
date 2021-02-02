import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/foundation.dart';

//User Display Name will be stored in the server as well as firebase server and as well as the personal server.

class MyUser with ChangeNotifier {}

class AuthProvider with ChangeNotifier {
  Future<String> signinwithEmailAndPassword(
      String email, String password) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    try {
      // Attemping to login with firebase auth
      return "DONE";
    } catch (e) {
      throw e.toString();
    }
  }
}
