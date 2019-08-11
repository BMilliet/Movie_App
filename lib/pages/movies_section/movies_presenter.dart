import 'dart:async';

import 'package:movie_app/components/movie_app_pageView.dart';
import 'package:movie_app/components/movie_card.dart';
import 'package:movie_app/models/all_movies.dart';

class MoviesPresenter {
  double _pageViewValue = 0;

  final _counterStateController = StreamController<double>();

  StreamSink<double> get _inCounter => _counterStateController.sink;
  Stream<double> get counter => _counterStateController.stream;

  List<MovieCard> buildCards(AllMovies allMovies) {
    List<MovieCard> cards = [];
    for (var movie in allMovies.movies) {
      final card = MovieCard(movie);
      card.onTapAction(movie);
      cards.add(card);
    }
    return cards;
  }

  void changePageViewState(MovieAppPageView pageView) {
    pageView.currentPageValue = pageView.controller.page;
  }

  void _onTapAction() {
    print('tap on card');
  }
}
