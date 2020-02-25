import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_example_app/models/json_parsing_models/shape_model.dart';
import 'dart:convert';

Future<String> _loadAShapeAsset() async {
  return await rootBundle.loadString('assets/shape.json');
}

Future loadShape() async {
  String jsonString = await _loadAShapeAsset();
  final jsonResponse = json.decode(jsonString);
  Shape shape = new Shape.fromJson(jsonResponse);
  print(shape.property.width);
}
