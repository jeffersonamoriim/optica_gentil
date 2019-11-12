import 'package:flutter/material.dart';
import 'package:optica_gentil/views/home_page.dart';
import 'package:optica_gentil/views/lab_page.dart';
import 'package:optica_gentil/views/login_page.dart';

  void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Optica Gentil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Colors.white),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
      LoginPage.routeName: (context) => new LoginPage(),
      HomePage.routeName: (context) => new HomePage(),
      LabPage.routeName: (context) => new LabPage(),
      },
      home: LoginPage(),
    );
  }
}

