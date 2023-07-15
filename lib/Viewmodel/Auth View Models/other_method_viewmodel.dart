import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:real/Utils/general_utils.dart';

class OtherLoginMethodViewModel with ChangeNotifier {
  Future<void> signInWithGoogle() async {
    final google = GoogleSignIn();
    final googleUser = await google.signIn();
    if (googleUser == null) {
      GeneralUtils.showToast("Something Went Wrong");
    }
    final googleAuth = await googleUser!.authentication;
    final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

    await FirebaseAuth.instance.signInWithCredential(credential).then((value) {
      GeneralUtils.showToast("Login Successfull");
    });
  }

  Future<void> signInWithFacebook() async {
    //TODO: Complete This Method
    GeneralUtils.showToast("Coming Soon");
  }
}
