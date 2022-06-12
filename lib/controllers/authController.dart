import 'package:IPCP/models/users.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'package:IPCP/datalayer/map/userMapping.dart';

class LoginController {
  /// Login functie
  static Future<dynamic> login(
    String email, String password, BuildContext context) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      final List<User> userList =
          await UserMapping.userMap.get([email, password]);

      userList.forEach((x) {
        if (email == x.email && password == x.password) {
          Navigator.pushNamed(context, '/dashboard');
        }
      });
      return AlertDialog();
    }

    return AlertDialog();
  }

  ///  loguit functie
  static Future<void> logout(BuildContext context) async {
    Navigator.pop(context);
  }

  /// Registreer functie
  static Future<User> register(User user, BuildContext context) async {
    user.token = sha256.toString();
    user.blocked = 0;
    try {
      user = await UserMapping.userMap.store(user);
    } on Exception catch (e) {
      print(e);
    }

    return user;
  }
}

