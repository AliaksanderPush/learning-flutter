import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(137, 49, 49, 49),
      titleTextStyle: TextStyle(
          color: Colors.white60, fontSize: 26, fontWeight: FontWeight.w700)),
  scaffoldBackgroundColor: const Color.fromARGB(137, 49, 49, 49),
  dividerColor: Colors.white30,
  primarySwatch: Colors.yellow,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white60),
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
    labelSmall: TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
  ),
);
