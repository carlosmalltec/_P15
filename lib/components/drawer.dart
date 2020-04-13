import 'package:br/components/header.dart';
import 'package:br/components/menu.dart';
import 'package:flutter/material.dart';

Widget drawer(BuildContext context) {
  return SafeArea(
    child: Drawer(
      elevation: 9,
      child: ListView(
        children: ListTile.divideTiles(
            color: Theme.of(context).primaryColor,
            context: context,
            tiles: [
              header(),
              menu(context, leading: Icons.home, title: "Início", onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              }),
              menu(context, leading: Icons.home, title: "Super-Heróis", onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/superherois');
              }),
              menu(context, leading: Icons.exit_to_app, title: "Sair",
                  onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              }),
            ]).toList(),
      ),
    ),
  );
}
