import 'dart:async';

import 'package:movie_app/components/movie_app_pageView.dart';
import 'package:movie_app/components/movie_card.dart';
import 'package:movie_app/models/all_movies.dart';

class MoviesPresenter {
  List<MovieCard> buildCards(AllMovies allMovies) {
    List<MovieCard> cards = [];
    for (var movie in allMovies.movies) {
      final card = MovieCard(movie);
      //card.onTapAction(movie);
      cards.add(card);
    }
    return cards;
  }

  void _onTapAction() {
    print('tap on card');
  }
}
