
import 'dart:math';

import 'package:br/bloc/bloc.dart';
import 'package:br/components/app_bar.dart';
import 'package:br/components/drawer.dart';
import 'package:br/listItens/components/body.dart';
import 'package:br/model/model_customer.dart';
import 'package:br/utils/has_data.dart';
import 'package:br/utils/has_error.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final _bloc = Bloc();
  List list = [69,2,3,4,5,6,7,8,9,10];

  @override
  void initState() {
    super.initState();
    _bloc.fetch(list);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,titulo: "Super-Heróis"),
      body: _body(),
      drawer: drawer(context),
    );
  }

  _body() {
    return StreamBuilder<List<ModelCustomer>>(
      stream: _bloc.outList,
      builder: (context, snapshot) {
        List<ModelCustomer> model = snapshot.data;
        if (snapshot.hasError) {
          return hasError(context,'Não foi possível processar a requisição.');
        }
        if (!snapshot.hasData) {
          return hasData();
        }
        return RefreshIndicator(
          onRefresh: _onRefresh,
          child: body(model),
        );
      },
    );
  }

  Future<void> _onRefresh() {
    var rng = new Random();
    var l = new List.generate(10, (_) => rng.nextInt(731));
    return _bloc.fetch(l);
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}