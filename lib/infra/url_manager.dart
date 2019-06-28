enum TimeOption { day, week }

class UrlManager {
  final _baseUrl = 'https://api.themoviedb.org/';
  final _api_version = '3/';
  final _category = 'trending/';
  final _option = 'all/';
  final _time = 'day?';
  final _key_prefix = 'api_key=';

  UrlManager();

  String trendingMovieUrl(String key, TimeOption time) {
    return _baseUrl +
        _api_version +
        _category +
        _option +
        time.toString() +
        _key_prefix +
        key;
  }
}
