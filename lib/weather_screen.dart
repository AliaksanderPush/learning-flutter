import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreen();
}

class _WeatherScreen extends State<WeatherScreen> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather screen'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black87,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String textToSentBack = textEditingController.text;
                  Navigator.pop(context, textToSentBack);
                },
                child: const Text('Sent text back'))
          ],
        ),
      ),
    );
  }
}
