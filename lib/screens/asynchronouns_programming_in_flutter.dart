import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String result = 'No result yet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asynchronouns programming in flutter'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Some long running operation',
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () {
                  someLongRunningOperationFutureAPI();

                },
              ),
              Container(
                height: 20.0,
              ),
              Text(result),
            ],
          ),
        ),
      ),
    );
  }

  void someLongRunningOperationFutureAPI(){
    Future.delayed(Duration(seconds: 3)).then((result) {
      setState(() {
        this.result = "Done";
      });
    }).catchError((error){
      print(error);
    });
  }
}
