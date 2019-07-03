import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:movie_app/exceptions/connection_exception.dart';

class Api {
  Api();

  request(String url) async {
    http.Response response = await http.get(url);
    if (_isValidStatusCode(response.statusCode)) {
      var decodedJson = json.decode(response.body);
      return decodedJson;
    } else {
      throw ConnectionException();
    }
  }

  bool _isValidStatusCode(int statusCode) {
    return statusCode == 200;
  }
}
