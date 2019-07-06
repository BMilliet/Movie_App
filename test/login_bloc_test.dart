import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/blocs/login_bloc.dart';
import 'package:movie_app/models/all_movies.dart';

void main() {
  final _loginBloc = LoginBloc();
  var _expected;
  var _validKey;
  var _invalidKey;
  var _movies;

  test('Test valid key format validation numbers', () {
    _validKey = '1234';
    _expected = _loginBloc.isInvalidKeyFormat(_validKey);

    expect(_expected, false);
  });

  test('Test valid key format validation letters', () {
    _validKey = 'abcd';
    _expected = _loginBloc.isInvalidKeyFormat(_validKey);

    expect(_expected, false);
  });

  test('Test valid key format validation numbers and letters', () {
    _validKey = '1234abcd';
    _expected = _loginBloc.isInvalidKeyFormat(_validKey);

    expect(_expected, false);
  });

  test('Test invalid key format validation empty text', () {
    _invalidKey = '';
    _expected = _loginBloc.isInvalidKeyFormat(_invalidKey);

    expect(_expected, true);
  });

  test('Test invalid key format validation blank space', () {
    _invalidKey = '  ';
    _expected = _loginBloc.isInvalidKeyFormat(_invalidKey);

    expect(_expected, true);
  });

  test('Test invalid key format validation null', () {
    _invalidKey = null;
    _expected = _loginBloc.isInvalidKeyFormat(_invalidKey);

    expect(_expected, true);
  });

  test('Test valid all movies value', () {
    _movies = AllMovies();
    _expected = _loginBloc.isValidAllMovies(_movies);

    expect(_expected, true);
  });

  test('Test invalid all movies value', () {
    _movies = null;
    _expected = _loginBloc.isValidAllMovies(_movies);

    expect(_expected, false);
  });

  test('Test invalid all movies value', () {
    _movies = 'text';
    _expected = _loginBloc.isValidAllMovies(_movies);

    expect(_expected, false);
  });
}
