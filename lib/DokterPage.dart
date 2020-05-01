import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'HomePage.dart';

class DokterPage extends StatefulWidget{
  static String id = 'DokterPage';
  @override
  _DokterPageState createState() => _DokterPageState();
}

class _DokterPageState extends State<DokterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Daftar Dokter'),
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

      body: Center(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DoctorCard(nama: 'Dokter X'),
                DoctorCard(nama: 'Dokter Y'),
                DoctorCard(nama: 'Dokter Z'),
              ],
            ),
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget{
  DoctorCard({@required this.nama});

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