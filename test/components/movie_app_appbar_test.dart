import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/components/movie_app_appBar.dart';

void main() {
  final _movieAppBar = MovieAppBar();
  final _subject = _movieAppBar.basicAppBar();
  var _expected;

  test('Should return a appBar', () {
    _expected = _subject is AppBar;

    expect(_expected, true);
  });
}
