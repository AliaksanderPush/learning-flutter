import 'package:flutter/material.dart';
//import 'package:flutter_app/weather_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  String text = 'Some text!';
  String user = 'I am user';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(user),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                text,
                style: const TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //_returnDataFromWeatherScreen(context);
                _returnDataFromWeatherScreen(context);
              },
              child: const Text('Go to weather screen'),
            )
          ],
        )),
      ),
    );
  }

  void _returnDataFromWeatherScreen(BuildContext context) async {
    // Route route = MaterialPageRoute(builder: (context) {
    //   return const WeatherScreen();
    // });
    final result = await Navigator.pushNamed(context, '/weather');

    setState(() {
      text = result.toString();
    });
  }
}

class User {
  final String? name;
  final int? age;
  User({this.name, this.age});
}
