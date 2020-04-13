import 'package:flutter/material.dart';

Widget boxShadow(){
    return Container(
      height: 90.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.0, 0.5),
          colors: [const Color(0x77000000), const Color(0x00000000)],
        ),
      ),
    );
}