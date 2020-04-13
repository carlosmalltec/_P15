import 'package:br/components/decoration.dart';
import 'package:flutter/material.dart';

Widget hasData(){
  return Container(
    padding: EdgeInsets.all(20),
    decoration: decoration(),
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}