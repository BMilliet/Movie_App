import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/components/movie_app_custom_shape.dart';

void main() {
  final _movieAppCustomShape = MovieAppCustomShape();
  var _result;
  var _expected;

  test('Should return a clipPath', () {
    _result = _movieAppCustomShape.clipContainer(Container());
    _expected = _result is ClipPath;

    expect(_expected, true);
  });
}
