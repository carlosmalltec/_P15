import 'package:br/details/components/card_capa.dart';
import 'package:br/details/components/card_description.dart';
import 'package:br/details/components/divider.dart';
import 'package:br/details/components/card_title.dart';
import 'package:br/model/model_customer.dart';
import 'package:flutter/material.dart';

Widget body(BuildContext context, ModelCustomer modelCustomer) {
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
                cardTitle(modelCustomer.name),
                cardDescription(context,modelCustomer.biography.publisher),
                divider(),
              ],
            ))),
    cardCapa(modelCustomer.image.url,modelCustomer.id),
  ]);
}
