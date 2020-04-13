import 'package:br/config/config.dart';
import 'package:flutter/material.dart';
AppBar appBar(BuildContext context,{titulo}) {
  return AppBar(
    centerTitle: true,
    iconTheme: new IconThemeData(color: Theme
        .of(context)
        .primaryColor),
    backgroundColor: Config.backgroundColor,
    elevation: 0.1,
    title: 
    Text(titulo, style: TextStyle(color: Theme
        .of(context)
        .primaryColor),
        ),
  );
}