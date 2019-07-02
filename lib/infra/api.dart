import 'package:http/http.dart' as http;
import 'package:movie_app/models/json_decode.dart';

class Api {
  Api();

  request(String url) async {
    http.Response response = await http.get(url);
    if (_isValidStatusCode(response.statusCode)) {
      var movies = JsonDecode().decode(response.body);
      return movies;
    } else {
      print('Failed to load videos');
    }
  }

  bool _isValidStatusCode(int statusCode) {
    return statusCode == 200;
  }
}
