import 'package:flutter/material.dart';
import 'package:movie_app/models/all_movies.dart';
import 'package:movie_app/styles/movie_app_colors.dart';

class MoviesView extends StatefulWidget {
  AllMovies _movies;
  MoviesView(this._movies);

  MoviesViewState createState() => MoviesViewState();
}

class MoviesViewState extends State<MoviesView> {
  @override
  void initState() {
    print(widget._movies);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _buildGrid(context, widget._movies)));
  }

  Widget _buildGrid(BuildContext context, AllMovies movies) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemCount: movies.count(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Image.network(
            movies.posterPathForMovieAt(index: index),
            height: 300,
            fit: BoxFit.fill,
          ),
        );
      },
    );
  }
}
