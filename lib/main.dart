import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name;
  @override
  Widget build(BuildContext content) {
    return new Scaffold(
        body: ListView(
      children: <Widget>[
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "App_bot",
              style: TextStyle(
                  fontSize: 50, fontFamily: "NeonSan", color: Colors.blue),
            ),
          ),
        ),
        Container(
          width: 240,
          padding: EdgeInsets.only(top: 30),
          child: Center(
              child: Container(
            width: 240,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Go for it"),
              onSubmitted: (name) {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      // ignore: unnecessary_brace_in_string_interps
                      return Image.network('https://robohash.org/');
                    });
              },
            ),
          )),
        )
      ],
    ));
  }
}
