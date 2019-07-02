import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movie_app/infra/url_manager.dart';
import 'package:movie_app/models/movie.dart';

class Api {
  Api();

  request(String key) async {
    http.Response response = await http.get(UrlManager().trendingMovieUrl(key));
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
}
