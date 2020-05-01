import 'package:flutter/material.dart';
import 'package:flutterapp/HasilPenyakit.dart';
import 'HomePage.dart';
import 'LoginPage.dart';
import 'HasilPenyakit.dart';

class Penyakit extends StatefulWidget{
  static String id = 'Penyakit';
  @override
  _PenyakitState createState() => _PenyakitState();
}

class _PenyakitState extends State<Penyakit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Daftar Penyakit'),
          backgroundColor: Colors.deepOrangeAccent,
        ),

        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new ListTile(
                  title: new Text("Beranda"),
                  trailing: new Icon(Icons.arrow_upward),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => HomePage() ));
                  }
              ),
              new ListTile(
                  title: new Text("Log Out"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => LoginPage() ));
                  }
              ),
              new Divider(),
              new ListTile(
                title: new Text("Cancel"),
                trailing: new Icon(Icons.cancel),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),

        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  HasilCard(nama:'Gejala1'),
                  HasilCard(nama:'Gejala2'),
                  HasilCard(nama:'Gejala3'),

                  RaisedButton(
                    color: Colors.deepOrangeAccent,
                    child: Text('Submit',
                      style: TextStyle(
                        color: Colors.white,),
                    ),
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => HasilPenyakit() ));
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

class HasilCard extends StatelessWidget{
  HasilCard({@required this.nama});

  final String nama;

  @override
  Widget build(BuildContext context) {
    return
      Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        color: Colors.deepOrange,
        child: ListTile(
          leading: Icon(
            Icons.people, color: Colors.white,
          ),
          title: Text(nama,
            style: TextStyle(
              color: Colors.white, fontSize: 15.0,
            ),
          ),
        ),
      );
  }
}