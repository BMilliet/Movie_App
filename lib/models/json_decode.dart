import 'dart:convert';
import 'package:movie_app/models/movie.dart';

class JsonDecode {
  JsonDecode();

  decode(String jsonBody) {
    var object = json.decode(jsonBody);
    List<Movie> movies = object['results'].map<Movie>((map) {
      return Movie.fromJson(map);
    }).toList();
    return movies;
  }
}
