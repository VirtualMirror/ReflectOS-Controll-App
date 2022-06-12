import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'controller.dart';

class ColorPalette {
  /// Kleuren voor de achtergronden en lichte elementen
  static final Color backgroundColorDarker = Color.fromRGBO(180, 188, 189, 1.0);
  static final Color backgroundColorDarky = Color.fromRGBO(187, 194, 195, 1.0);
  static final Color backgroundColorDark = Color.fromRGBO(226, 236, 237, 1.0);
  static final Color backgroundColorLight = Color.fromRGBO(229, 229, 229, 1.0);

  /// Kleuren voor de gekleurde elementen
  static final Color interfaceColorDark = Color.fromRGBO(50, 153, 255, 1.0);
  static final Color interfaceColorLight = Color.fromRGBO(90, 173, 255, 1.0);

  /// Light gradient kleuren
  static final gradientColor1 = Color.fromRGBO(90, 173, 255, 1.0);
  static final gradientColor2 = Color.fromRGBO(70, 163, 255, 1.0);
  static final gradientColor3 = Color.fromRGBO(50, 153, 225, 1.0);
  static final gradientColor4 = Color.fromRGBO(45, 137, 229, 1.0);
}

extension ColorUtils on Color {
  /// Functie voor het mixen van de kleuren
  Color mix(Color main, Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}

class SettingsController extends Controller {
  /// Constructor
  SettingsController(BuildContext context) : super(context) {
    this.context = context;
  }

  /// Class om alle instellingen op te halen
  Column index() {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: this.listAllSettings(),
    );
  }

  /// Functie om alle settings te updaten
  Future<void> update() async {}

  /// Lijst met alle instellingen
  List<Container> listAllSettings() {
    return [
      /// Algemene instellingen
      new Container(
          width: MediaQuery.of(this.context).size.width / 100 * 85,
          height: MediaQuery.of(this.context).size.height / 100 * 10,
          margin: EdgeInsets.fromLTRB(00.0, 10.0, 00.0, 10.0),
          decoration: BoxDecoration(
            color: ColorPalette.backgroundColorDark,
            shape: BoxShape.rectangle,
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
          child: MaterialButton(
            onPressed: () async {
              // Navigator.pop(context);
            },
            child: Text('Algemeen'),
          ),
        ),
      /// Uiterlijke instellingen
      new Container(
        width: MediaQuery.of(this.context).size.width / 100 * 85,
        height: MediaQuery.of(this.context).size.height / 100 * 10,
        margin: EdgeInsets.fromLTRB(00.0, 10.0, 00.0, 10.0),
        decoration: BoxDecoration(
          color: ColorPalette.backgroundColorDark,
          shape: BoxShape.rectangle,
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
        child: MaterialButton(
          onPressed: () async {
            // Navigator.pop(context);
          },
          child: Text('Uiterlijk'),
        ),
      ),
      /// Geluid instellingen
      new Container(
        width: MediaQuery.of(this.context).size.width / 100 * 85,
        height: MediaQuery.of(this.context).size.height / 100 * 10,
        margin: EdgeInsets.fromLTRB(00.0, 10.0, 00.0, 10.0),
        decoration: BoxDecoration(
          color: ColorPalette.backgroundColorDark,
          shape: BoxShape.rectangle,
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
        child: MaterialButton(
          onPressed: () async {
            // Navigator.pop(context);
          },
          child: Text('Spraak / Video'),
        ),
      ),
      /// Account instellingen
      new Container(
        width: MediaQuery.of(this.context).size.width / 100 * 85,
        height: MediaQuery.of(this.context).size.height / 100 * 10,
        margin: EdgeInsets.fromLTRB(00.0, 10.0, 00.0, 10.0),
        decoration: BoxDecoration(
          color: ColorPalette.backgroundColorDark,
          shape: BoxShape.rectangle,
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
        child: MaterialButton(
          onPressed: () async {
             Navigator.pushNamed(context, '/settings/account');
          },
          child: Text('Account'),
        ),
      ),
    ];
  }
}