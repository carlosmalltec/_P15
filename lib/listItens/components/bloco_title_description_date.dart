import 'package:br/config/config.dart';
import 'package:br/listItens/components/cad_data.dart';
import 'package:br/listItens/components/card_description.dart';
import 'package:br/listItens/components/card_title.dart';
import 'package:flutter/material.dart';

Widget blocoTitleDescriptionDate(title,description,publisher) {
  return new Expanded(
      child: new Container(
        margin: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            cardTitle(title),
            cardDescription(description),
            cardData(publisher),
          ],
        ),
      ));
}