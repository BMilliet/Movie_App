import 'package:movie_app/models/movie.dart';

class AllMovies {
  final List<Movie> movies;

  AllMovies({this.movies});

  factory AllMovies.fromJson(Map<String, dynamic> json) {
    var list = json['results'] as List;
    List<Movie> movieList = list.map((i) => Movie.fromJson(i)).toList();
    return AllMovies(movies: movieList);
  }
}
