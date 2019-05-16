import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/settings': (BuildContext context) => new SettingsPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TestProject'),
      ),
      body: new Center(
        child: new FlatButton(
          child: const Text('Go to Settings'),
          onPressed: () => Navigator.of(context).pushNamed('/settings')
        )
      )
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('SettingsPage'),
        ),
        body: new Center(
            child: new Text('Settings')
        )
    );
  }
}