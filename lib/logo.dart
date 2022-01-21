import 'package:flutter/material.dart';

class RandomLogo extends StatelessWidget {
  const RandomLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'res/random.png',
      height: 128.0,
      width: 128.0,
    );
  }
}
