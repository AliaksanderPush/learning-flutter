import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn page'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(children: [
        Image.network(
            'https://avatars.mds.yandex.net/i?id=7be932d526d34f5966e9546f322667e76781228e-8311686-images-thumbs&n=13'),
        const SizedBox(
          height: 20,
        ),
        const Divider(),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(left: 10, right: 10),
          color: Colors.yellow,
          width: double.infinity,
          child: const Text(
            'Hello',
            style: TextStyle(fontSize: 22, color: Colors.blue),
          ),
        ),
        const Divider(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                foregroundColor: isSwitch ? Colors.white : Colors.blue,
                backgroundColor: isSwitch ? Colors.black : Colors.white),
            child: const Text('Press')),
        Switch(
            value: isSwitch,
            onChanged: (bool newBool) {
              setState(() {
                isSwitch = newBool;
                debugPrint('switch=> $isSwitch');
              });
            }),
        Checkbox(
            value: isCheckBox,
            onChanged: (bool? newBool) {
              setState(() {
                isCheckBox = newBool;
                debugPrint('check=> $isCheckBox');
              });
            })
      ]),
    );
  }
}
