import 'package:movie_app/infra/url_manager.dart';
import 'package:movie_app/models/movie.dart';
import 'package:flutter/material.dart';

class AllMovies {
  final List<Movie> movies;

  AllMovies({this.movies});

  factory AllMovies.fromJson(Map<String, dynamic> json) {
    var list = json['results'] as List;
    List<Movie> movieList = list.map((i) => Movie.fromJson(i)).toList();
    return AllMovies(movies: movieList);
  }

  Movie movieAt({@required int index}) {
    return movies[index];
  }

  int count() {
    return movies.length;
  }

  String posterPathForMovieAt({@required int index}) {
    return UrlManager().posterUrl(movieAt(index: index).poster_path);
  }
}
