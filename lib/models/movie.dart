import 'package:movie_app/infra/url_manager.dart';

class Movie {
  final int id;
  final String title;
  final String overview;
  final String poster_path;
  final double vote_average;

  Movie(
      {this.id,
      this.title,
      this.overview,
      this.poster_path,
      this.vote_average});

  @override
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        title: json['title'],
        overview: json['overview'],
        poster_path: json['poster_path'],
        vote_average: json['vote_average']);
  }

  String getPoster() {
    return UrlManager().posterUrl(poster_path);
  }
}
