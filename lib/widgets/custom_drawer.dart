import 'package:flutter/material.dart';
import 'package:optica_gentil/views/lab_page.dart';
import 'package:optica_gentil/views/login_page.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _showHeader(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.label),
            title: Text('Laboratório'),
            onTap: (){
              Navigator.of(context).pushNamed(LabPage.routeName);
            },
          ),
          Divider(),
            ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: (){
              Navigator.of(context).pushNamed(LoginPage.routeName);
            },
          ),
        ],
      ),
    );
  }

  Widget _showHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      accountName: Text('Óptica Gentil', style: TextStyle(color: Colors.black)),
      accountEmail: Text('adm@opticagentil.com.br', style: TextStyle(color: Colors.black)),
      currentAccountPicture: CircleAvatar(child: Text('J', style: TextStyle(color: Colors.black),), backgroundColor: Colors.green,),
    );
  }
}