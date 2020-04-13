import 'package:br/config/config.dart';
import 'package:flutter/material.dart';

Widget button(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      FlatButton(
        splashColor: Config.accentColor,
        color: Config.backgroundColor,
        onPressed: (){
          Navigator.pushNamed(context, '/superherois');
        },
        child: Text("Acesse a lista dos super-heróis",
        style: TextStyle(
          color: Config.primaryColor,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),
        ),
      )
    ],
  );
}
