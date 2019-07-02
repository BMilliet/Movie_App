class Movie {
  final int id;
  final String title;

  Movie({this.id, this.title});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(id: json['id'], title: json['original_title']);
  }
}
