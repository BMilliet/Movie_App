import 'package:movie_app/models/movie.dart';

class MovieInfoHelper {
  static dynamic resolvePoster(Movie movie) {
    if (movie.getPoster() != null) {
      return movie.getPoster();
    }
    return null;
  }

  static String resolveTitle(Movie movie) {
    if (movie.title != null) {
      return movie.title;
    }
    return '';
  }
}
