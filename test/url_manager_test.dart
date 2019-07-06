import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/infra/url_manager.dart';

void main() {
  final _url_manager = UrlManager();
  var _result;

  test('Test build url', () {
    var params = ['hello', 'world'];
    _result = _url_manager.buildUrl(params);

    expect(_result, 'hello/world/');
  });

  test('Test build url parameters', () {
    var base = 'baseUrl/';
    var params = ['parameter'];
    _result = _url_manager.addUrlParameters(base, params);

    expect(_result, 'baseUrl/parameter?');
  });
}
