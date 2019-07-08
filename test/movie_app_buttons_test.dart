import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/components/movie_app_buttons.dart';

void main() {
  final _movieAppButtons = MovieAppButtons();
  var _result;
  var _expected;

  test('Should return a material button', () {
    _result = _movieAppButtons.materialButton('message', () {});
    _expected = _result is MaterialButton;

    expect(_expected, true);
  });
}
