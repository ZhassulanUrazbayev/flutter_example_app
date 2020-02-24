import 'package:flutter/material.dart';
import 'package:flutter_example_app/services/page_services.dart';
import 'package:flutter_example_app/services/photo_services.dart';
import 'package:flutter_example_app/services/product_services.dart';
import 'package:flutter_example_app/services/shape_services.dart';
import 'package:flutter_example_app/services/address_services.dart';
import 'package:flutter_example_app/services/student_services.dart';

class EmptyScreen extends StatefulWidget {
  @override
  _EmptyScreenState createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen> {
  @override
  void initState() {
//    loadStudent();
//    loadAddress();
//    loadShape();
//    loadProduct();
//    loadPhoto();
  loadPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}
