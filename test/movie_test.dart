import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/models/movie.dart';

import 'json_mock.dart';

void main() {
  final _correct_json = JsonMock.moviesJson;
  Movie _movies;

  test('Should return build movie from correct json', () {
    _movies = new Movie.fromJson(_correct_json);

    var _isMovieType = true;
    var _id = _movies.id;
    var _title = _movies.title;
    var _overview = _movies.overview;
    var _poster_path = _movies.poster_path;
    var _vote_average = _movies.vote_average;

    expect(_isMovieType, _movies is Movie);
    expect(_id, 1234);
    expect(_title, 'mock title');
    expect(_overview, 'mock overview');
    expect(_poster_path, 'mock poster path');
    expect(_vote_average, 9.5);
  });
}
