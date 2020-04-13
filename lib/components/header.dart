import 'package:br/config/config.dart';
import 'package:flutter/material.dart';

UserAccountsDrawerHeader header() {
  var nome = "Carlos Santos";
  var email = "carlosmalltec@gmail.com";
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
        color: Config.backgroundColor,
        border: Border(
          bottom:
          BorderSide(color: Config.dividerColor, width: 4),
        )),
    margin: EdgeInsets.only(bottom: 0),
    accountName: Text(
      nome,
      style: TextStyle(color: Config.primaryColor),
    ),
    accountEmail: Text(
      email,
      style: TextStyle(color: Config.primaryColor),
    ),
    currentAccountPicture: CircleAvatar(
      backgroundColor: Config.bottomNavBarColor,
      child: Text(
        nome.substring(0, 1),
        style: TextStyle(
            fontSize: 45.0, color: Config.primaryColor),
      ),
    ),
  );
}