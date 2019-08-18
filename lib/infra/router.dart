import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/models/all_movies.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/pages/login/login_view.dart';
import 'package:movie_app/pages/movie_detail/detail_view.dart';
import 'package:movie_app/pages/movies_section/movies_view.dart';

import 'named_routes.dart';

class Router {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginView());
      case moviesView:
        AllMovies _movies = settings.arguments;
        return MaterialPageRoute(builder: (_) => MoviesView(_movies));
      case detailView:
        Movie _movie = settings.arguments;
        return MaterialPageRoute(builder: (_) => DetailView(_movie));
      default:
        return MaterialPageRoute(builder: (_) => Container(color: Colors.cyan));
    }
  }
}
