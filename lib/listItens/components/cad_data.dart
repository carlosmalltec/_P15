import 'package:br/config/config.dart';
import 'package:flutter/material.dart';

Widget cardData(publisher) {
  return Text(
    "Editora: ${publisher}",
    maxLines: 1,
    style: new TextStyle(color: Config.primaryColor, fontSize: 11.0),
  );
}