import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  Api();

  search(String key) async {
    //http.Response response = await http.get(buildUrl(key));
    //return decode(response);
  }

  decode(http.Response response) {
    if (_isValidStatusCode(response.statusCode)) {
      var decoded = json.decode(response.body);
      print(decoded);
      // List<Video> videos = decoded['items'].map<Video>((map) {
      //   return Video.fromJson(map);
      // }).toList();
      // return videos;
    } else {
      throw Exception('Failed to load videos');
    }
  }

  bool _isValidStatusCode(int statusCode) {
    return statusCode == 200;
  }
}
