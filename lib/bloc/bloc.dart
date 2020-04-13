import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:br/api/api.dart';
import 'package:br/model/model_customer.dart';

class Bloc extends BlocBase {
  final _streamController = StreamController<List<ModelCustomer>>();
  Stream<List<ModelCustomer>> get outList => _streamController.stream;
  // ignore: missing_return
  Future<List<ModelCustomer>> fetch(List list) async {
    try {
      Map<String, dynamic> mapaData = {};

      List<ModelCustomer> listDataCustomer = [];
      if (list.length > 0) {
        for (int i = 0; i < list.length; i++) {
          int id = list[i];
          mapaData = await API.getResults(id);
          listDataCustomer.add(ModelCustomer.fromJson(mapaData));
          _streamController.add(listDataCustomer);
        }
      }
      return listDataCustomer;

    } catch (e) {
      _streamController.addError(e);
    }
  }

  // ignore: must_call_super
  void dispose() {
    _streamController.close();
  }
}
