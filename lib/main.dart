import 'package:br/config/config.dart';
import 'package:br/listItens/index.dart' as itens;
import 'package:br/deshboard/index.dart' as deshboard;
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Config.title,
      theme: ThemeData(
          primaryColor: Config.primaryColor,
          accentColor: Config.accentColor,
          dividerColor: Config.dividerColor,
          backgroundColor: Config.backgroundColor,
          dialogBackgroundColor: Config.bottomNavBarColor,
          brightness: Config.thema,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => deshboard.Index(),
        '/superherois': (context) => itens.Index(),
      },
    );
  }
}
