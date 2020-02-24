import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_example_app/models/address_model.dart';
import 'dart:convert';

Future<String> _loadAAddressAsset() async {
  return await rootBundle.loadString('assets/address.json');
}

Future loadAddress() async {
  String jsonString = await _loadAAddressAsset();
  final jsonResponse = json.decode(jsonString);
  Address address = new Address.fromJson(jsonResponse);
  print(address.streets[0]);
}