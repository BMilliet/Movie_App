import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/styles/movie_app_dimens.dart';
import 'package:movie_app/styles/movie_app_style.dart';

class MovieCard extends StatelessWidget {
  Movie _movie;

  MovieCard(this._movie);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          child: Stack(
            children: <Widget>[
              Container(
                  height: MovieAppDimens.stack_300,
                  width: MovieAppDimens.inline_180,
                  child: GestureDetector(
                    onTap: onTapAction(_movie),
                    child: Image.network(
                      _resolvePoster(),
                      height: MovieAppDimens.stack_300,
                      fit: BoxFit.cover,
                    ),
                  )),
              Positioned(
                left: 10,
                bottom: 10,
                child: Row(
                  children: <Widget>[
                    Text(
                      _resolveTitle(),
                      style: MovieAppStyle.bright_style_s,
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }

  onTapAction(Movie movie) {
    print(movie.title);
    print(movie.overview);
  }

  dynamic _resolvePoster() {
    if(_movie.getPoster() != null) {
      return _movie.getPoster();
    }
    return null;
  }

  String _resolveTitle() {
    if(_movie.title != null) {
      return _movie.title;
    }
    return '';
  }
}
