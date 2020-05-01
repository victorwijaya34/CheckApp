import 'package:flutter/material.dart';
import 'UI/ReusableCard.dart';
import 'UI/IconContent.dart';
import 'Penyakit.dart';
import 'LoginPage.dart';
import 'HomePage.dart';

const activeCardColour = Colors.deepOrange;

class ListPenyakit extends StatefulWidget{
  static String id = 'ListPenyakit';
  @override
  _ListPenyakitState createState() => _ListPenyakitState();
}

class _ListPenyakitState extends State<ListPenyakit> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body:
      SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 200, height: 200,
                     child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Penyakit() ));
                      },
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(icon: Icons.mood_bad, label:'Penyakit A',),
                    ),
                  ),
                  ),
                  Container(
                    width: 200, height: 200,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Penyakit() ));
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.mood_bad, label:'Penyakit B',),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 200, height: 200,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Penyakit() ));
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.mood_bad, label:'Penyakit C',),
                      ),
                    ),
                  ),
                  Container(
                    width: 200, height: 200,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Penyakit() ));
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.mood_bad, label:'Penyakit D',),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 200, height: 200,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Penyakit() ));
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.mood_bad, label:'Penyakit E',),
                      ),
                    ),
                  ),
                  Container(
                    width: 200, height: 200,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Penyakit() ));
                      },
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.mood_bad, label:'Penyakit F',),
                      ),
                    ),
                  ),
                ],
              ),
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
            ],
          ),
        ),
      ),

    );
  }
}


