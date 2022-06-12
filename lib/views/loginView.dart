import 'package:flutter/material.dart';


class LoginView extends StatefulWidget {
  /// Genereer een view ID
  static const String ROUTE_ID = 'loginview';

  /// Maak een nieuwe instantie aan van _LoginView
  @override
  _LoginView createState() => _LoginView();
}

class _LoginView extends State<LoginView> {
  /// Maak controller aan
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  /// Maak content in widget schoon
  @override
  void dispose() {
    this.emailController.dispose();
    this.passwordController.dispose();
    super.dispose();
  }

  /// Widget aanmaken
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontFamily: 'monserat',
      color: ColorPalette.interfaceColorDark,
      fontSize: 20.0,
    );

    return Scaffold(
      appBar: null,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorPalette.backgroundColorDark,
                ColorPalette.backgroundColorLight,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30.0),
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 00.0, 40.0, 00.0),
                decoration: BoxDecoration(
                  color: ColorPalette.backgroundColorDark,
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      ColorPalette.backgroundColorDark,
                      ColorPalette.backgroundColorLight,
                    ],
                    stops: [
                      0.0,
                      0.6,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: -Offset(6.0, 4.0),
                      blurRadius: 12.0,
                    ),
                    BoxShadow(
                      color: ColorPalette.backgroundColorDarker,
                      offset: Offset(6.0, 4.0),
                      blurRadius: 12.0,
                    ),
                  ],
                ),
                child: TextField(
                  obscureText: false,
                  style: style,
                  controller: emailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: 'Emailadres..',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 00.0, 40.0, 00.0),
                decoration: BoxDecoration(
                  color: ColorPalette.backgroundColorDark,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: -Offset(6.0, 4.0),
                      blurRadius: 12.0,
                    ),
                    BoxShadow(
                      color: ColorPalette.backgroundColorDarker,
                      offset: Offset(6.0, 4.0),
                      blurRadius: 12.0,
                    ),
                  ],
                ),
                child: TextField(
                  obscureText: false,
                  style: style,
                  controller: passwordController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: 'Wachtwoord..',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 00.0, 40.0, 00.0),
                decoration: BoxDecoration(
                  color: ColorPalette.interfaceColorDark,
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        ColorPalette.gradientColor1,
                        ColorPalette.gradientColor2,
                        ColorPalette.gradientColor3,
                        ColorPalette.gradientColor4,
                      ],
                      stops: [
                        0.1,
                        0.4,
                        0.6,
                        0.9,
                      ]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () async {
                    AlertDialog(
                      title: Text("Dit is een melding"),
                    );
                    await LoginController.login(this.emailController.text,
                        this.passwordController.text, context);
                  },
                  child: Text(
                    'Inloggen',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'monserat',
                      color: ColorPalette.backgroundColorDark,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              GestureDetector(
                  onTap: () async {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text('Of maak een nieuw account')
              ),
            ],
          ),
        ),
      ),
    );
  }
}