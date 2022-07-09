import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _volume = 0.0;
  int minvalue = 0;

  void volumeup() {
    setState(() {
      _volume += 10;
    });
  }

  void volumedown() {
    setState(() {
      _volume -= 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                volumeup();
              },
            ),
            Text('Volume : $_volume'),
            IconButton(
              icon: const Icon(Icons.volume_down),
              tooltip: 'Decrease volume by 10',
              onPressed: () {
                volumedown();
              },
            ),
          ],
        ),
      ),
    );
  }
}
