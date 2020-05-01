import 'package:flutter/material.dart';
import 'package:flutterapp/LoginPage.dart';
import 'UI/ReusableCard.dart';
import 'UI/IconContent.dart';
import 'KlinikPage.dart';
import 'DokterPage.dart';
import 'ObatPage.dart';
import 'ListPenyakit.dart';
import 'Penyakit.dart';

const activeCardColour = Colors.deepOrange;

class HomePage extends StatefulWidget{
  static String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Beranda'),
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

      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Penyakit() ));
                },
                child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: IconContent(icon: Icons.people, label:'Belum tahu penyakit Penyakit',),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => ListPenyakit() ));
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.people_outline, label:'Penyakit',),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => KlinikPage() ));
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.local_hospital, label:'Klinik',),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => ObatPage() ));
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.tablet, label:'Obat',),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => DokterPage() ));
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.nature_people, label:'Dokter',),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}


