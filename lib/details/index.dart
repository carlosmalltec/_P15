import 'package:br/components/app_bar.dart';
import 'package:br/components/box_decoration.dart';
import 'package:br/components/drawer.dart';
import 'package:br/details/components/body.dart';
import 'package:br/details/components/description_external.dart';
import 'package:br/model/model_customer.dart';
import 'package:br/utils/utils.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  ModelCustomer model;

  Index(this.model);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,titulo: widget.model.name),
      body: _body(),
     // drawer: drawer(context),
    );
  }
  _body() {
    return OrientationBuilder(builder: (context, orientation) {
      return Container(
        color: Theme.of(context).backgroundColor,
        child: Stack(
          children: <Widget>[
            boxDecoration(),
            Center(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.only(
                    top: Utils.getSpeakerOrientationTopMargin(orientation),
                    bottom: 40.0,
                    right: Utils.getOrientationSideMargin(orientation),
                    left: Utils.getOrientationSideMargin(orientation)),
                child: Column(
                  children: <Widget>[
                    body(context,widget.model),
                    descriptionExternal(widget.model.biography.placeOfBirth),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}