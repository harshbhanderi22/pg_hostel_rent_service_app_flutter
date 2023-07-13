import 'package:flutter/material.dart';
import 'package:real/Utils/app_styles.dart';
import 'package:real/Utils/general_utils.dart';

class AuthViewModel with ChangeNotifier {
  bool _isRegisterLoading = false;
  bool _isLoginLoading = false;
  bool _isRegisterPasswordObsecure = true;
  bool _isLoginPasswordObsecure = true;

  bool get getLoginLoading => _isLoginLoading;
  bool get getRegisterLoading => _isRegisterLoading;
  bool get getRegisterPasswordVisibility => _isRegisterPasswordObsecure;
  bool get getLoginPasswordVisibility => _isRegisterPasswordObsecure;

  void setLoginLoading(bool value) {
    _isLoginLoading = value;
    notifyListeners();
  }

  void setRegisterLoading(bool value) {
    _isRegisterLoading = value;
    notifyListeners();
  }

  void setRegisterPasswordVisible(bool value) {
    _isRegisterPasswordObsecure = value;
    notifyListeners();
  }

  void setLoginPasswordVisible(bool value) {
    _isLoginPasswordObsecure = value;
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
    //TODO: Implement Firebase Register Funtionality
    setRegisterLoading(true);
    notifyListeners();
    Future.delayed(Duration(seconds: 2))
        .then((value) => setRegisterLoading(false));
    ;
    notifyListeners();

    GeneralUtils.showToast("Register Coming Soon");
  }

  Future<void> loginUser(String email, String password) async {
    //TODO: Implement Firebase Login Funtionality
  }

  Future<void> signInWithGoogle() async{
    //TODO: Implement Sign With Google
  }

   Future<void> signInWithFacebook() async{
    //TODO: Implement Sign With Facebook
  }
}
