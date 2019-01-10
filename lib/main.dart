import 'package:flutter/material.dart';
import 'name_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'FiraCode'
      ),
      home: NameGenerator(),
    );
  }
}