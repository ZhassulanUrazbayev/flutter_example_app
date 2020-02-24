import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_example_app/models/page_model.dart';
import 'dart:convert';

Future<String> _loadAPageAsset() async {
  return await rootBundle.loadString('assets/page.json');
}

Future loadPage() async {
  String jsonString = await _loadAPageAsset();
  final jsonResponse = json.decode(jsonString);
  Page pageList = new Page.fromJson(jsonResponse);
  print(pageList.data[0].images[0].imageName);
}