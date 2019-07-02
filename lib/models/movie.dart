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

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        title: json['title'],
        overview: json['overview'],
        poster_path: json['poster_path'],
        vote_average: json['vote_average']);
  }
}
