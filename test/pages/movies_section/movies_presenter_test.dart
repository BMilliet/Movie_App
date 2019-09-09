import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/components/movie_card.dart';
import 'package:movie_app/models/all_movies.dart';
import 'package:movie_app/pages/movies_section/movies_presenter.dart';

import '../../test_helpers/json_mock.dart';

void main() {
  final _moviesPresenter = MoviesPresenter();
  final _json = JsonMock.allMoviesJson;
  final _allMovies = AllMovies.fromJson(_json);

  test('build a list of movieCard', () {
    var _result = _moviesPresenter.buildCards(_allMovies);
    expect(_result is List<MovieCard>, true);
  });
}
