import 'package:flutter/material.dart';

import 'package:controll_app/views/splashView.dart';
import 'package:controll_app/views/loginView.dart';
import 'package:controll_app/views/logoutView.dart';
import 'package:controll_app/views/dashboardView.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => LoginView(),
    '/login': (context) => LoginView(),
    '/dashboard': (context) => LoginView(),
    '/logout': (context) => LoginView(),
  },
));