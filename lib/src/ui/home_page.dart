import 'package:flutter/material.dart';
import 'package:folder_structure/src/config/constants/route_constants.dart';
import 'package:folder_structure/src/config/navigation/navigation_service.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  // _ ile baslarsa fonksiyon degiskenler private olur.
  // Baska bir dosyadan erisilemez.
  // Dart'in yapisi bu sekildedir.

  void _incrementCounter() {
    NavigationService.instance.navigate(k_ROUTE_ABOUT);
    NavigationService.instance.navigateToReset(k_ROUTE_HOME);
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'kere butona bastınız.',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Arttır',
        child: Icon(Icons.add),
      ),
    );
  }
}
