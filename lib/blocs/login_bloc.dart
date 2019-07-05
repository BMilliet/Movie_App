import 'dart:async';

import 'package:movie_app/infra/api.dart';
import 'package:movie_app/infra/url_manager.dart';
import 'package:movie_app/models/all_movies.dart';

class LoginBloc {
  final api = Api();
  var allMoview = AllMovies();

  final _controller = StreamController<AllMovies>();
  StreamSink<AllMovies> get _allMovies => _controller.sink;
  Stream<AllMovies> get allMovies => _controller.stream;

  Future<AllMovies> makeRequest(String key) async {
    var url = UrlManager().trendingMovieUrl(key);
    try {
      var decodedJson = await Api().request(url);
      AllMovies movies = new AllMovies.fromJson(decodedJson);
      return movies;
    } catch (exception) {
      return exception;
    }
  }

  void close() {
    _controller.close();
  }
}
