import 'package:flutter/material.dart';
import 'package:movie_app/pages/movies_section/movies_bloc.dart';
import 'package:movie_app/pages/movies_section/movies_presenter.dart';
import 'package:movie_app/components/movie_app_appBar.dart';
import 'package:movie_app/components/movie_app_custom_shape.dart';
import 'package:movie_app/components/movie_app_pageView.dart';
import 'package:movie_app/components/movie_card.dart';
import 'package:movie_app/models/all_movies.dart';
import 'package:movie_app/styles/movie_app_colors.dart';
import 'package:movie_app/styles/movie_app_dimens.dart';

class MoviesView extends StatefulWidget {
  AllMovies _movies;
  MoviesView(this._movies);

  MoviesViewState createState() => MoviesViewState();
}

class MoviesViewState extends State<MoviesView> {
  @override
  MoviesPresenter _presenter = MoviesPresenter();
  MoviesBloc _bloc = MoviesBloc();
  List<MovieCard> _cards = [];
  AppBar _customAppBar = MovieAppBar().basicAppBar();
  MovieAppPageView _pageView = MovieAppPageView();

  void initState() {
    _cards = _presenter.buildCards(widget._movies);
    _setControllerListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar,
      body: _builBody(context),
      backgroundColor: MovieAppColors.backgroundColor,
    );
  }

  Widget _builBody(BuildContext context) {
    return SafeArea(
        child: StreamBuilder<double>(
            stream: _bloc.counter,
            initialData: 0,
            builder: (BuildContext context, AsyncSnapshot<double> snapshot) {
              return ListView(
                children: <Widget>[
                  _customContainer(),
                  _pageView.build(
                      _cards, snapshot.data, MovieAppDimens.stack_300)
                ],
              );
            }));
  }

  Widget _customContainer() {
    return Container(
        height: MovieAppDimens.stack_180,
        child: MovieAppCustomShape()
            .clipContainer(Container(color: MovieAppColors.primaryColor)));
  }

  void _setControllerListener() {
    _pageView.controller.addListener(() {
      _bloc.changePageViewState(_pageView);
    });
  }
}
