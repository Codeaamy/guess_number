import 'package:flutter/material.dart';
import 'package:guess_number/home_page.dart';

void main() => runApp(GuessNumber());

class GuessNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
