import 'package:br/config/config.dart';
import 'package:flutter/material.dart';

Widget cardTitle(curencyName) {
  return Text(
    curencyName,
    maxLines: 2,
    style: new TextStyle(
      fontWeight: FontWeight.w700,
      color: Config.primaryColor,
      fontSize: 20,
    ),
  );
}
