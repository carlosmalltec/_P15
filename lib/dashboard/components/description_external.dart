import 'package:br/config/config.dart';
import 'package:flutter/material.dart';

Widget descriptionExternal() {
  return Container(
      alignment: AlignmentDirectional.centerStart,
      padding: EdgeInsets.only(top: 4.0, bottom: 14.0, right: 6.0, left: 6.0),
      child: Text(
        "Obtenha todos os dados de super-heróis e vilões de todos os universos em uma única API.",
        maxLines: 6,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16.0,
            height: 1.2,
            color: Config.decriptionExternalColor,
          decoration: TextDecoration.none,
        ),
      ));
}
