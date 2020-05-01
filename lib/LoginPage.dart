import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget{
  static String id = 'LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 70.0,
                  ),
                  Container(
                    height: 250,
                    width: 250,
                    child: Image(
                      image: AssetImage('images/218592.jpg'),
                    ),
                  ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: ListTile(
                  leading: Icon(
                    Icons.people, color: Colors.deepOrange,
                  ),
                  title: TextField(
                    style: TextStyle(
                      color: Colors.deepOrange, fontSize: 15.0,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Username',
                    ),
                  ),
                ),
              ),

                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.people, color: Colors.deepOrange,
                      ),
                      title: TextField(
                        style: TextStyle(
                          color: Colors.deepOrange, fontSize: 15.0,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),

                  RaisedButton(
                    color: Colors.deepOrangeAccent,
                    child: Text('Masuk',
                      style: TextStyle(
                        color: Colors.white,),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, HomePage.id);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}