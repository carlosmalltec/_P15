import 'package:flutter/material.dart';

Widget cardTitle(String nome) {
  return Container(
      padding: EdgeInsets.only(top: 80.0, bottom: 6.0),
      child: Text(
        nome,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
      ));
}
