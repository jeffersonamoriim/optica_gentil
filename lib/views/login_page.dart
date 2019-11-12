import 'package:flutter/material.dart';
import 'package:optica_gentil/views/home_page.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SizedBox(
            height: 500.00,
            width: 400.00,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 15.0)],
                ),
              child: _buildBody(),
            ))));
  }

  Widget _buildBody() {
    return Center(
        child: Container(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildLogo(),
        SizedBox(
            height: 50.0,
            width: 300.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 10.0)],
              ),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.00),
                    border: InputBorder.none,
                    hintText: 'Email'),
              ),
            )),
            Container(
              padding: EdgeInsets.all(10.0),
            ),
        SizedBox(
            height: 50.0,
            width: 300.0,
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 10.0)],
              ),
              child: TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    border: InputBorder.none,
                    hintText: 'Senha'),
              ),
            )),
            SizedBox(
              height: 60.0,
              width: 300.00,
            child: Container(
          padding: EdgeInsets.only(top: 20.0),
          child: RaisedButton(
            color: Colors.indigo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(color: Colors.indigo),
            ),
            child: Text('LOGIN', style: TextStyle(color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.of(context).pushNamed(HomePage.routeName);
            },
          ),
        )),
      ],
    )));
  }

  _buildLogo() {
    return Container(
      padding: EdgeInsets.only(bottom: 30.0),
      child: Center(
        child: Image(
          image: AssetImage('assets/images/logo.png'),
          height: 188.66,
          width: 441.0,
        ),
      ),
    );
  }
}
