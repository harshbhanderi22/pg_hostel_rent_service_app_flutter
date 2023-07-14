// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:real/Utils/general_utils.dart';

class LoginViewModel with ChangeNotifier {
  bool _isLoading = false;
  bool _obsecure = true;

  bool get getLoading => _isLoading;
  bool get getObsecurity => _obsecure;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void setObsecurity(bool value) {
    _obsecure = value;
    notifyListeners();
  }

  Future<void> loginUser(String email, String password) async {
    setLoading(true);
    try{
      final credential = FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) {
        setLoading(false);
        GeneralUtils.showToast("You Logged In Successfully");
      });
    } on FirebaseAuthException catch (e) {
      setLoading(false);

      if (e.code == 'user-not-found') {
        GeneralUtils.showToast("No user found for that email.");
       } else if (e.code == 'wrong-password') {
        GeneralUtils.showToast(
            "Wrong password provided for that user.");
       }
    }
   }
  }