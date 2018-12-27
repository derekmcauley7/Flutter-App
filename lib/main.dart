import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var imageArray = ['assets/yoda.jpg', 'assets/yoda2.jpg'];
var textArray = ['Luke and Yoda', 'Yoda'];
var imageNumber = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Yoda App')),
        body: Card(
          child: Column(
            children: <Widget>[
              Image.asset(imageArray[imageNumber]),
              Text(textArray[imageNumber]),
              RaisedButton(
                child: const Text('Button'),
                color: Theme.of(context).accentColor,
                elevation: 10.0,
                onPressed: () {
                  setState(() {
                    if (imageNumber < imageArray.length - 1) {
                      imageNumber = imageNumber + 1;
                    } else {
                      imageNumber = 0;
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
