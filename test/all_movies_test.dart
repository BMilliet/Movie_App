import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/models/all_movies.dart';
import 'package:movie_app/models/movie.dart';

import 'json_mock.dart';

void main() {
  final _json = JsonMock.allMoviesJson;
  AllMovies _all_movies;

  test('Should return instance of allMovies from correct json', () {
    _all_movies = new AllMovies.fromJson(_json);
    List<Movie> _movies = _all_movies.movies;

    expect(_all_movies is AllMovies, true);
    expect(_movies is List<Movie>, true);
    expect(_all_movies.count(), 2);
  });
}
