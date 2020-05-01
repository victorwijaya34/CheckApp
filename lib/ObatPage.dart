import 'package:flutter/material.dart';
import 'UI/ReusableCard.dart';
import 'UI/IconContent.dart';

const activeCardColour = Colors.deepOrange;

class ObatPage extends StatefulWidget{
  static String id = 'Daftar Obat';
  @override
  _ObatPageState createState() => _ObatPageState();
}

class _ObatPageState extends State<ObatPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Beranda'),
        backgroundColor: Colors.deepOrangeAccent,
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
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(icon: Icons.tablet, label:'Obat A',),
                      ),
                    ),
                  Container(
                    width: 200, height: 200,
                      child: ReusableCard(
                        colour: activeCardColour,
                        cardChild: IconContent(icon: Icons.tablet, label:'Obat B',),
                      ),
                    ),
                  ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 200, height: 200,
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(icon: Icons.tablet, label:'Obat C',),
                    ),
                  ),
                  Container(
                    width: 200, height: 200,
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(icon: Icons.tablet, label:'Obat D',),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 200, height: 200,
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(icon: Icons.tablet, label:'Obat E',),
                    ),
                  ),
                  Container(
                    width: 200, height: 200,
                    child: ReusableCard(
                      colour: activeCardColour,
                      cardChild: IconContent(icon: Icons.tablet, label:'Obat F',),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}


