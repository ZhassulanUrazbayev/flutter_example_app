import 'package:flutter/material.dart';
import 'package:flutter_example_app/models/json_parsing_models/network_example_models/post_model.dart';
import 'package:flutter_example_app/services/json_parsing_services/network_example_services/network_service.dart';

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
//    loadPage();
    createPostAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: FutureBuilder<Post>(
          future: getPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData)
              return Text(
                'Title from Post JSON : ${snapshot.data.title}',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14.0),
              );
            else
              return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
