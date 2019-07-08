import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/blocs/login_bloc.dart';
import 'package:movie_app/models/all_movies.dart';

void main() {
  final _loginBloc = LoginBloc();
  var _result;
  var _validKey;
  var _invalidKey;
  var _movies;

  test('Test valid key format validation numbers', () {
    _validKey = '1234';
    _result = _loginBloc.isInvalidKeyFormat(_validKey);

    expect(_result, false);
  });

  test('Test valid key format validation letters', () {
    _validKey = 'abcd';
    _result = _loginBloc.isInvalidKeyFormat(_validKey);

    expect(_result, false);
  });

  test('Test valid key format validation numbers and letters', () {
    _validKey = '1234abcd';
    _result = _loginBloc.isInvalidKeyFormat(_validKey);

    expect(_result, false);
  });

  test('Test invalid key format validation empty text', () {
    _invalidKey = '';
    _result = _loginBloc.isInvalidKeyFormat(_invalidKey);

    expect(_result, true);
  });

  test('Test invalid key format validation blank space', () {
    _invalidKey = '  ';
    _result = _loginBloc.isInvalidKeyFormat(_invalidKey);

    expect(_result, true);
  });

  test('Test invalid key format validation null', () {
    _invalidKey = null;
    _result = _loginBloc.isInvalidKeyFormat(_invalidKey);

    expect(_result, true);
  });

  test('Test valid all movies value', () {
    _movies = AllMovies();
    _result = _loginBloc.isValidAllMovies(_movies);

    expect(_result, true);
  });

  test('Test invalid all movies value', () {
    _movies = null;
    _result = _loginBloc.isValidAllMovies(_movies);

    expect(_result, false);
  });

  test('Test invalid all movies value', () {
    _movies = 'text';
    _result = _loginBloc.isValidAllMovies(_movies);

    expect(_result, false);
  });
}
