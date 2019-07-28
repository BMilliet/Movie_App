import 'package:flutter/material.dart';
import 'package:movie_app/components/movie_app_appBar.dart';
import 'package:movie_app/components/movie_app_shape.dart';
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
  PageController controller =
      PageController(viewportFraction: 0.45, initialPage: 0);
  var currentPageValue = 0.0;

  void initState() {
    print(widget._movies);
    _cards = _buildCards();
    _setControllerListener();
    super.initState();
  }

  AppBar customAppBar = MovieAppBar().basicAppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: customAppBar, body: _buildBody());
  }

  Widget _buildBody() {
    return SafeArea(
        child: ListView(
      children: <Widget>[_customShape(), _buildPageView()],
    ));
  }

  Widget _customShape() {
    return Container(
      height: 270,
      child: MovieAppShape().roundedShape(),
    );
  }

  Widget _buildPageView() {
    return Container(
        height: MovieAppDimens.stack_300,
        child: PageView.builder(
          controller: controller,
          itemBuilder: (context, position) {
            if (position == currentPageValue.floor()) {
              return Transform(
                transform: Matrix4.identity()
                  ..rotateX(currentPageValue - position),
                child: _cards[position],
              );
            } else if (position == currentPageValue.floor() + 1) {
              return Transform(
                transform: Matrix4.identity()
                  ..rotateX(currentPageValue - position),
                child: _cards[position],
              );
            } else {
              return Transform(
                transform: Matrix4.identity()
                  ..rotateX(currentPageValue - position),
                child: _cards[position],
              );
            }
          },
          itemCount: _cards.length,
        ));
  }

  void _setControllerListener() {
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });
  }

  List<MovieCard> _buildCards() {
    List<MovieCard> cards = [];
    for (var movie in widget._movies.movies) {
      final card = MovieCard(movie);
      cards.add(card);
    }
    return cards;
  }

  void _onTapAction() {
    print('tap on card');
  }
}
