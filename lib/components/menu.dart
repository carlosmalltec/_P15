import 'package:br/config/config.dart';
import 'package:flutter/material.dart';

Material menu(
    BuildContext context, {
      @required IconData leading,
      @required String title,
      String subtitle = '',
      @required Function onTap,
    }) {
  return Material(
    color: Config.backgroundColor,
    child: InkWell(
      child: ListTile(
        leading: Icon(
          leading,
          color: Config.primaryColor,
          size: 25,
        ),
        title: Text(
          title,
          style:
          TextStyle(color: Config.primaryColor, fontSize: 16),
        ),
        subtitle: subtitle != null
            ? Text(subtitle, style: TextStyle(color: Colors.white10))
            : null,
        trailing: Icon(
          Icons.arrow_forward,
          color: Config.primaryColor,
          size: 19,
        ),
        onTap: onTap,
      ),
    ),
  );
}