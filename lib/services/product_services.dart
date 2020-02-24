import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_example_app/models/product_model.dart';
import 'dart:convert';

Future<String> _loadAProductAsset() async {
  return await rootBundle.loadString('assets/product.json');
}

Future loadProduct() async {
  String jsonString = await _loadAProductAsset();
  final jsonResponse = json.decode(jsonString);
  Product product = new Product.fromJson(jsonResponse);
  print(product.images[0].imageName);
}
