import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future signInAnonymous() async {
    _auth.signInAnonymously();
  }
}
