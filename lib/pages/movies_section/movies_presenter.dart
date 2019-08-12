import 'package:movie_app/components/movie_card.dart';
import 'package:movie_app/models/all_movies.dart';

class MoviesPresenter {
  List<MovieCard> buildCards(AllMovies allMovies) {
    List<MovieCard> cards = [];
    for (var movie in allMovies.movies) {
      final card = MovieCard(movie);
      card.actionCallback = _onTapAction();
      cards.add(card);
    }
    return cards;
  }

  _onTapAction() {
    print('tap on card');
  }
}
