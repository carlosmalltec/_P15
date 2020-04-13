import 'package:br/dashboard/components/card_capa.dart';
import 'package:br/dashboard/components/card_description.dart';
import 'package:br/dashboard/components/divider.dart';
import 'package:br/dashboard/components/button.dart';
import 'package:br/dashboard/components/card_title.dart';
import 'package:flutter/material.dart';

Widget body(BuildContext context) {
  assert(context != null);
  return Stack(alignment: AlignmentDirectional.topCenter, children: <Widget>[
    Card(
        elevation: 12.0,
        margin: EdgeInsets.only(top: 82.0, bottom: 20.0),
        child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                cardTitle(),
                cardDescription(context),
                divider(),
                button(context),
              ],
            ))),
    cardCapa(),
  ]);
}
