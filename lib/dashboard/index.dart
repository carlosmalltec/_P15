import 'package:br/components/box_decoration.dart';
import 'package:br/dashboard/components/body.dart';
import 'package:br/dashboard/components/description_external.dart';
import 'package:br/dashboard/components/title_external.dart';
import 'package:br/utils/utils.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                            body(context),
                           titleExternal(context),
                            descriptionExternal(),
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