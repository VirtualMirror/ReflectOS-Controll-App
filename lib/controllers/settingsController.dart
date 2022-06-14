import 'package:flutter/material.dart';
// import 'controller.dart'; // ? - Doesn't exist

class ColorPalette {
  /// Kleuren voor de achtergronden en lichte elementen
  static const Color backgroundColorDarker = Color.fromRGBO(180, 188, 189, 1.0);
  static const Color backgroundColorDarky = Color.fromRGBO(187, 194, 195, 1.0);
  static const Color backgroundColorDark = Color.fromRGBO(226, 236, 237, 1.0);
  static const Color backgroundColorLight = Color.fromRGBO(229, 229, 229, 1.0);

  /// Kleuren voor de gekleurde elementen
  static const Color interfaceColorDark = Color.fromRGBO(50, 153, 255, 1.0);
  static const Color interfaceColorLight = Color.fromRGBO(90, 173, 255, 1.0);

  /// Light gradient kleuren
  static const gradientColor1 = Color.fromRGBO(90, 173, 255, 1.0);
  static const gradientColor2 = Color.fromRGBO(70, 163, 255, 1.0);
  static const gradientColor3 = Color.fromRGBO(50, 153, 225, 1.0);
  static const gradientColor4 = Color.fromRGBO(45, 137, 229, 1.0);
}

extension ColorUtils on Color {
  /// Functie voor het mixen van de kleuren
  Color? mix(Color main, Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}

class SettingsController {
  BuildContext context;

  /// Constructor
  SettingsController(this.context);

  /// Class om alle instellingen op te halen
  Column index() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: listAllSettings(),
    );
  }

  /// Functie om alle settings te updaten
  Future<void> update() async {}

  /// Lijst met alle instellingen
  List<Container> listAllSettings() {
    return [
      /// Algemene instellingen
      Container(
          width: MediaQuery.of(context).size.width / 100 * 85,
          height: MediaQuery.of(context).size.height / 100 * 10,
          margin: const EdgeInsets.fromLTRB(00.0, 10.0, 00.0, 10.0),
          decoration: BoxDecoration(
            color: ColorPalette.backgroundColorDark,
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: -const Offset(6.0, 4.0),
                blurRadius: 12.0,
              ),
              const BoxShadow(
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
            child: const Text('Algemeen'),
          ),
        ),
      /// Uiterlijke instellingen
      Container(
        width: MediaQuery.of(context).size.width / 100 * 85,
        height: MediaQuery.of(context).size.height / 100 * 10,
        margin: const EdgeInsets.fromLTRB(00.0, 10.0, 00.0, 10.0),
        decoration: BoxDecoration(
          color: ColorPalette.backgroundColorDark,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: -const Offset(6.0, 4.0),
              blurRadius: 12.0,
            ),
            const BoxShadow(
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
          child: const Text('Uiterlijk'),
        ),
      ),
      /// Geluid instellingen
      Container(
        width: MediaQuery.of(context).size.width / 100 * 85,
        height: MediaQuery.of(context).size.height / 100 * 10,
        margin: const EdgeInsets.fromLTRB(00.0, 10.0, 00.0, 10.0),
        decoration: BoxDecoration(
          color: ColorPalette.backgroundColorDark,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: -const Offset(6.0, 4.0),
              blurRadius: 12.0,
            ),
            const BoxShadow(
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
          child: const Text('Spraak / Video'),
        ),
      ),
      /// Account instellingen
      Container(
        width: MediaQuery.of(context).size.width / 100 * 85,
        height: MediaQuery.of(context).size.height / 100 * 10,
        margin: const EdgeInsets.fromLTRB(00.0, 10.0, 00.0, 10.0),
        decoration: BoxDecoration(
          color: ColorPalette.backgroundColorDark,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: -const Offset(6.0, 4.0),
              blurRadius: 12.0,
            ),
            const BoxShadow(
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
          child: const Text('Account'),
        ),
      ),
    ];
  }
}