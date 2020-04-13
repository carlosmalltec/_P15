import 'package:flutter/material.dart';

Widget cardDescription(BuildContext context, String editora) {
  return Text(
   editora,
    style: TextStyle(color: Theme.of(context).textTheme.caption.color),
  );
}
