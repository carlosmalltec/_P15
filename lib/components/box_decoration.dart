import 'package:br/config/config.dart';
import 'package:flutter/material.dart';
Widget boxDecoration(){
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Config.listBackground),
            alignment: AlignmentDirectional.topCenter,
            fit: BoxFit.fitWidth)),
  );
}