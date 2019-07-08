class UrlManager {
  final _baseUrl = 'https://api.themoviedb.org';
  final _api_version = '3';
  final _category = 'trending';
  final _option = 'all';
  final _time = 'day';
  final _key_prefix = 'api_key=';

  UrlManager();

  String trendingMovieUrl(String key) {
    var _base = buildUrl([_baseUrl, _api_version, _category, _option]);
    var _urlWithParameters = addUrlParameters(_base, [_time]);
    return _urlWithParameters + _key_prefix + key;
  }

  String buildUrl(List<String> elements) {
    var url = '';
    for (var element in elements) {
      element += '/';
      url += element;
    }
    return url;
  }

  String addUrlParameters(String baseUrl, List<String> parameters) {
    for (var parameter in parameters) {
      parameter += '?';
      baseUrl += parameter;
    }
    return baseUrl;
  }
}
