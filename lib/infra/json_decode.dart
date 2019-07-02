import 'dart:convert';
import 'package:movie_app/models/all_movies.dart';

class JsonDecode {
  JsonDecode();

  decode(String jsonBody) {
    var object = json.decode(jsonBody);
    AllMovies movies = new AllMovies.fromJson(object);
    print(movies);
    return movies;
  }
}
