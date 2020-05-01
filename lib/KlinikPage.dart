import 'package:flutter/material.dart';
import 'UI/ReusableCard.dart';
import 'UI/IconContent.dart';
import 'LoginPage.dart';
import 'HomePage.dart';

const activeCardColour = Colors.deepOrange;

class KlinikPage extends StatefulWidget{
  static String id = 'KlinikPage';
  @override
  _KlinikPageState createState() => _KlinikPageState();
}

class _KlinikPageState extends State<KlinikPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Daftar Klinik'),
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
      SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                child: GestureDetector(
                  onTap: (){
                    print ('Test');
                  },
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon: Icons.local_hospital, label:'Klinik A',),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: GestureDetector(
                  onTap: (){
                    print ('Test');
                  },
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon: Icons.local_hospital, label:'Klinik B',),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: GestureDetector(
                  onTap: (){
                    print ('Test');
                  },
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon: Icons.local_hospital, label:'Klinik C',),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: GestureDetector(
                  onTap: (){
                    print ('Test');
                  },
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(icon: Icons.local_hospital, label:'Klinik D',),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}


