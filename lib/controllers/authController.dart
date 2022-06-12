import 'package:flutter/material.dart';


class LoginController {
  /// Login functie
  static Future<dynamic> login(
    String email, String password, BuildContext context) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      
      return AlertDialog();
    }

    return AlertDialog();
  }

  ///  loguit functie
  static Future<void> logout(BuildContext context) async {
    Navigator.pop(context);
  }

  /// Registreer functie
  static Future<String> register( BuildContext context) async {
    return "";
  }
}

