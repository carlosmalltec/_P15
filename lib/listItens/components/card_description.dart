import 'package:br/config/config.dart';
import 'package:flutter/material.dart';

Widget cardDescription(description) {
  return new Container(
    margin: new EdgeInsets.only(top: 5.0),
    child: new Text(
      "Naturalidade: ${description}",
      maxLines: 2,
      style: new TextStyle(color: Config.primaryColor, fontSize: 14.0),
    ),
  );
}
