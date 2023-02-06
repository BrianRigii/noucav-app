import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:noucav/viewmodel.dart';

class LoginScreenVM extends ViewModel {
  String email = '';
  String password = '';
  bool isPasswordVisible = false;
  bool isLoginButtonEnabled = false;
  bool isLoginButtonLoading = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onEmailChanged(String value) {
    email = value;
    isLoginButtonEnabled = email.isNotEmpty && password.isNotEmpty;
    notifyListeners();
  }

  void onPasswordChanged(String value) {
    password = value;
    isLoginButtonEnabled = email.isNotEmpty && password.isNotEmpty;
    notifyListeners();
  }

  void onPasswordVisibilityChanged() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void onLoginButtonPressed() {
    isLoginButtonLoading = true;
    notifyListeners();
  }
}
