import 'package:flutter/material.dart';
import 'package:movie_app/models/all_movies.dart';
import 'package:movie_app/styles/movie_app_colors.dart';

class MainView extends StatefulWidget {
  AllMovies _movies;
  MainView(this._movies);

  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  void initState() {
    print(widget._movies);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: MovieAppColors.secondaryColor,
    ));
  }
}
