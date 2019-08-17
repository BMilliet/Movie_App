import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/models/movie.dart';

import '../test_helpers/json_mock.dart';

void main() {
  final _json = JsonMock.moviesJson;
  Movie _movie;

  test('Should return instance of movie from correct json', () {
    _movie = new Movie.fromJson(_json);

    var _id = _movie.id;
    var _title = _movie.title;
    var _overview = _movie.overview;
    var _poster_path = _movie.poster_path;
    var _vote_average = _movie.vote_average;

    expect(_movie is Movie, true);
    expect(_id, 1234);
    expect(_title, 'mock title');
    expect(_overview, 'mock overview');
    expect(_poster_path, 'mock poster path');
    expect(_vote_average, 9.5);
  });
}
