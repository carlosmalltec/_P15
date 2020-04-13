import 'package:br/components/decoration.dart';
import 'package:flutter/material.dart';

Widget hasError(BuildContext context, String msg){
  return Container(
    padding: EdgeInsets.all(20),
    decoration: decoration(),
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "Nenhum Resultado",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
                fontWeight: FontWeight.w700),
          ),
          Text(
            msg,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Container(
            width: 180,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: FlatButton(
                splashColor: Theme.of(context).primaryColor,
                color: Theme.of(context).primaryColor,
                child: ListTile(
                  leading: Icon(Icons.arrow_back, color: Theme.of(context).accentColor),
                  title: new Text('Início',
                      style: TextStyle(fontWeight: FontWeight.w700,color: Theme.of(context).accentColor,)),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
