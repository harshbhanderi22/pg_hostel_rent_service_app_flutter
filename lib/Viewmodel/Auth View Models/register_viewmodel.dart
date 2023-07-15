// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:real/Utils/app_styles.dart';
import 'package:real/Utils/general_utils.dart';

class RegisterViewModel with ChangeNotifier {
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

  void validateRegisterDetailsAndRegister(
      String name, String email, String password, String confirmPassword) {
    if (name.isEmpty) {
      GeneralUtils.showToast(Styles.nameValidation);
    } else if (email.isEmpty) {
      GeneralUtils.showToast(Styles.emailValidation);
    } else if (GeneralUtils().checkValidEmail(email) == false) {
      GeneralUtils.showToast(Styles.inValidEmailValidation);
    } else if (password.isEmpty) {
      GeneralUtils.showToast(Styles.passwordValidation);
    } else if (password.length < 8) {
      GeneralUtils.showToast(Styles.passwordLengthValidation);
    } else if (confirmPassword.isEmpty) {
      GeneralUtils.showToast(Styles.confirmPasswordValidation);
    } else if (confirmPassword != password) {
      GeneralUtils.showToast(Styles.passwordNotMatchValidation);
    } else {
      registerUser(email, password);
    }
  }

  Future<void> registerUser(String email, String password) async {
    setLoading(true);
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        setLoading(false);
        GeneralUtils.showToast("User Created Successfully 🎉🎉");
      });
    } on FirebaseAuthException catch (e) {
      setLoading(false);
      if (e.code == 'weak-password') {
        GeneralUtils.showToast(
            'Your password lacks strength. Please choose a stronger one.');
      } else if (e.code == 'email-already-in-use') {
        GeneralUtils.showToast(
            'Account already exists. Please choose a different email address.');
      }
    }
  }
}
