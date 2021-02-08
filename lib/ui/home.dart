import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/table_screen";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreenPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomeScreenPage extends StatefulWidget {
  HomeScreenPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
