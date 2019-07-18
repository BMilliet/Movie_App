import 'package:flutter/material.dart';
import 'package:movie_app/components/movie_card.dart';
import 'package:movie_app/models/all_movies.dart';
import 'package:movie_app/styles/movie_app_dimens.dart';

class MoviesView extends StatefulWidget {
  AllMovies _movies;
  MoviesView(this._movies);

  MoviesViewState createState() => MoviesViewState();
}

class MoviesViewState extends State<MoviesView> {
  @override
  List<MovieCard> _cards = [];

  void initState() {
    print(widget._movies);
    _buildCards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: _buildList()));
  }

  Widget _buildList() {
    return Container(
      height: MovieAppDimens.stack_300,
      width: MovieAppDimens.inline_180,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: _buildCards(),
      ),
    );
  }

  List<MovieCard> _buildCards() {
    List<MovieCard> cards = [];
    for (var movie in widget._movies.movies) {
      final card = MovieCard(movie);
      cards.add(card);
    }
    return cards;
  }
}
