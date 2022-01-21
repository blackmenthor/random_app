import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_app/logo.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _number = 0;

  void _randomizeNumber() {
    final randomNumber = Random().nextInt(9999);
    setState(() {
      _number = randomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const RandomLogo(),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              'Random Number:',
            ),
            Text(
              '$_number',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _randomizeNumber,
        tooltip: 'Randomize',
        child: const Icon(
          Icons.shuffle,
        ),
      ),
    );
  }
}