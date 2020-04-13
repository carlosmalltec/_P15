import 'package:br/config/config.dart';
import 'package:flutter/material.dart';

Widget titleExternal(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(top: 10.0, bottom: 6.0),
      child: Text(
        "SuperHero API",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32.0,
          color: Config.titleExternalColor,
          decoration: TextDecoration.none,
        ),
      ));
}
