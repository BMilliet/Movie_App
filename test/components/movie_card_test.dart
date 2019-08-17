import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/components/movie_card.dart';
import 'package:movie_app/models/movie.dart';
import '../test_helpers/json_mock.dart';

void main() {
  final _json = JsonMock.moviesJson;
  final _movieMock = new Movie.fromJson(_json);
  final _actionMock = () {};
  final _movieCard = MovieCard(_movieMock, _actionMock);

  var _result;
  var _expected;

  test('Should return a card', () {
    _result = _movieCard.build(null);
    _expected = _result is Card;

    expect(_expected, true);
  });
}
