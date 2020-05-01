import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'LoginPage.dart';

class HasilPenyakit extends StatefulWidget{
  static String id = 'HasilPenyakit';
  @override
  _HasilPenyakitState createState() => _HasilPenyakitState();
}

class _HasilPenyakitState extends State<HasilPenyakit> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HasilCard(nama: 'Kamu sakit'),
                  HasilCard(nama: 'Demam'),

                  RaisedButton(
                    color: Colors.deepOrangeAccent,
                    child: Text('Kembali',
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
          title: Text(nama,
            style: TextStyle(
              color: Colors.white, fontSize: 15.0,
            ),
          ),
        ),
      );
  }
}