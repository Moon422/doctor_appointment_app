import 'package:flutter/material.dart';

class AppTheme {
  final Color primary;
  final Color accent;
  final Color tertiary;

  AppTheme(
      {required this.primary,
      required this.accent,
      required this.tertiary});
}

// class AppThemeLight extends AppTheme {
//   final Color primary = const Color(0xff0165fc);
//   final Color secondary = const Color(0xff242424);
//   final Color tertiary = const Color(0xff484848);
//   final Color quaternary = const Color(0xffeaecf0);
// }

class AppThemeProvider with ChangeNotifier {
  AppTheme theme = AppTheme(
    primary: const Color(0xff0165fc),
    accent: const Color(0xffeaecf0),
    tertiary: Colors.white,
  );
}
