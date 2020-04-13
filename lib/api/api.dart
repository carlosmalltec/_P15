import 'dart:convert' as convert;

import 'package:br/config/config.dart';
import 'package:http/http.dart' as http;

class API {
  static Future<Map<String, dynamic>> getResults(id) async {
    try {
      Map<String, dynamic> responseData = {};
      Map<String, String> headers = {"Content-Type": "application/json"};
      var url = "${Config.jsonUrl}/api.php/2651759508266929/$id";
      var response = await http.get(url, headers: headers);
      return responseData = convert.json.decode(response.body);

    } catch (error) {
      print("API: catch erro");
    }
  }

}