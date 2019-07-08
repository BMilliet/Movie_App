import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/infra/url_manager.dart';

void main() {
  final _url_manager = UrlManager();
  var _result;
  var _expected;

  test('Test build trending movies url', () {
    _result = _url_manager.trendingMovieUrl('123');
    _expected = 'https://api.themoviedb.org/3/trending/all/day?api_key=123';

    expect(_result, _expected);
  });

  test('Test build url', () {
    var params = ['hello', 'world'];
    _result = _url_manager.buildUrl(params);
    _expected = 'hello/world/';

    expect(_result, _expected);
  });

  test('Test build url parameters', () {
    var base = 'baseUrl/';
    var params = ['parameter'];
    _result = _url_manager.addUrlParameters(base, params);
    _expected = 'baseUrl/parameter?';

    expect(_result, _expected);
  });
}
