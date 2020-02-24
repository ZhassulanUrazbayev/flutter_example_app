import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_example_app/models/photo_model.dart';
import 'dart:convert';

Future<String> _loadAPhotoAsset() async {
  return await rootBundle.loadString('assets/photo.json');
}

Future loadPhoto() async {
  String jsonString = await _loadAPhotoAsset();
  final jsonResponse = json.decode(jsonString);
  PhotosList photosList = new PhotosList.fromJson(jsonResponse);
  print(photosList.photos[2].thumbnailUrl);
}
