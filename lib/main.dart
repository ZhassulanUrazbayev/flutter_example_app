import 'package:flutter/material.dart';
import 'package:flutter_example_app/screens/asynchronouns_programming_in_flutter.dart';
import 'package:flutter_example_app/screens/empty_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmptyScreen(),
    );
  }
}