import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_app/infra/url_manager.dart';
import 'package:movie_app/models/movie.dart';

class Api {
  Api();

  request(String url) async {
    http.Response response = await http.get(url);
    return decode(response);
  }

  decode(http.Response response) {
    if (_isValidStatusCode(response.statusCode)) {
      var decoded = json.decode(response.body);
      List<Movie> movies = decoded['results'].map<Movie>((map) {
        return Movie.fromJson(map);
      }).toList();
      return movies;
    } else {
      print('Failed to load videos');
    }
  }

  bool _isValidStatusCode(int statusCode) {
    return statusCode == 200;
  }

  // WIP request with generic types
  request1<T>(String url, T type) async {
    http.Response response = await http.get(url);
    return decode1(response, type);
  }

  decode1<T>(http.Response response, T type) {
    if (_isValidStatusCode(response.statusCode)) {
      var decoded = json.decode(response.body);
      List<T> movies = decoded['results'].map<T>((map) {
        return Movie.fromJson(map);
      }).toList();
      return movies;
    } else {
      print('Failed to load videos');
    }
  }
}
