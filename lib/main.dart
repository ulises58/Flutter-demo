import 'package:demo/pages/buttons_page.dart';
import 'package:demo/pages/chips_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ChipsPage.ROUTE,
      routes: {
        ChipsPage.ROUTE: (BuildContext context) => ChipsPage(),
        ButtonsPage.ROUTE: (BuildContext context) => ButtonsPage(),
      },
    );
  }
}