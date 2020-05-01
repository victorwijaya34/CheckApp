import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'HomePage.dart';
import 'DokterPage.dart';
import 'KlinikPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CheckApp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.orange,
        ),
        initialRoute: LoginPage.id,
        routes: {
          LoginPage.id: (context) => LoginPage(),
          HomePage.id: (context) => HomePage(),
          DokterPage.id: (context) => DokterPage(),
          KlinikPage.id: (context) => KlinikPage(),
        },
    );
  }
}
