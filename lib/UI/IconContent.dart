import 'package:flutter/material.dart';

class IconContent extends StatelessWidget{
  IconContent({@required this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.teal,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          icon,
          size: 80,
        ),
      ],
    );
  }
}