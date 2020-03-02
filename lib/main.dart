import 'package:flutter/material.dart';
import 'package:flutter_example_app/screens/collapsing_toolbar/example_page.dart';
import 'package:flutter_example_app/screens/flutter_docs_provider/mainFile.dart';
import 'package:flutter_example_app/screens/provider_deep_example_with_firebase/provider_deep_example_firebase.dart';
import 'package:flutter_example_app/screens/provider_example_page.dart';
import 'package:flutter_example_app/services/json_parsing_services/provider_example/counter_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CollapsingAppBarExample());
  }
}
