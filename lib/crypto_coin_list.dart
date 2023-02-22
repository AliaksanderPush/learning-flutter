import 'package:flutter/material.dart';
import 'package:flutter_app/router/route.dart';
import 'package:flutter_app/theme/theme.dart';

class CriptoCurrenciesListApp extends StatelessWidget {
  const CriptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List',
      theme: darkTheme,
      routes: routes,
    );
  }
}
