import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
BoxDecoration decoration() {
  return BoxDecoration(
    image: DecorationImage(
        image: ExactAssetImage('images/bg.png'),
        fit: BoxFit.cover),
    gradient: LinearGradient(
        colors: [const Color(0x77000000), const Color(0x00000000)],
        begin: FractionalOffset.topLeft,
        end: FractionalOffset.bottomRight,
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp),
  );

}