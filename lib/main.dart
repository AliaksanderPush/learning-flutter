import 'package:flutter/material.dart';

void main() => runApp(const CryptoCurrencyListApp());

class CryptoCurrencyListApp extends StatelessWidget {
  const CryptoCurrencyListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24))),
      home: const MyHomePage(title: 'CryptoList'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, i) => const ListTile(
                    title: Text(
                  'Bitkoin',
                ))));
  }
}
