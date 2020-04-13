
import 'package:br/components/decoration.dart';
import 'package:br/details/index.dart';
import 'package:br/listItens/components/bloco_title_description_date.dart';
import 'package:br/listItens/components/card_capa.dart';
import 'package:br/model/model_customer.dart';
import 'package:br/utils/navigator.dart';
import 'package:flutter/material.dart';


// ignore: non_constant_identifier_names
Container body(List<ModelCustomer> model) {
  return Container(
    decoration: decoration(),
    child: ListView.builder(
      itemCount:  model.length,
      itemBuilder: (context, index) {
        ModelCustomer data = model[index];
        return Material(
          borderRadius: new BorderRadius.circular(6.0),
          // elevation: 2.0,
          color: Colors.transparent,
          child: Card(
            child: InkWell(
              splashColor: Theme.of(context).accentColor,
              onTap: () {
                navigator(context, Index(data));
              },
              child: Container(
                margin: const EdgeInsets.all(0.0),
                child: Container(
                  height: 95.0,
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      cardCapa(data.image.url,data.id),
                      blocoTitleDescriptionDate(
                          data.name,
                          data.biography.placeOfBirth,
                          data.biography.publisher),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}
