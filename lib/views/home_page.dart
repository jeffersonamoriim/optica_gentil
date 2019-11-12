import 'package:flutter/material.dart';
import 'package:optica_gentil/widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Optica Gentil'),
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.refresh),
            padding: EdgeInsets.only(right: 10.0),
          )
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}