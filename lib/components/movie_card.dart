import 'package:flutter/material.dart';
import 'package:movie_app/infra/named_routes.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/styles/movie_app_colors.dart';
import 'package:movie_app/styles/movie_app_dimens.dart';
import 'package:movie_app/styles/movie_app_style.dart';
import 'package:movie_app/texts/movie_app_texts.dart';

class MovieCard extends StatelessWidget {
  Movie _movie;

  MovieCard(this._movie);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Stack(
          children: <Widget>[
            Container(
                color: MovieAppColors.backgroundColor,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, detailView,
                          arguments: _movie);
                    },
                    child: _fadeInImage())),
            Positioned(
              left: MovieAppDimens.stack_10,
              bottom: MovieAppDimens.stack_10,
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
        ));
  }

  Widget _fadeInImage() {
    return FadeInImage.assetNetwork(
        fadeInCurve: Curves.easeIn,
        fadeOutDuration: Duration(seconds: 1),
        placeholder: MovideAppTexts.movieDb_logo_square,
        image: _resolvePoster(),
        height: MovieAppDimens.stack_300,
        alignment: Alignment.center,
        fit: BoxFit.cover);
  }

  dynamic _resolvePoster() {
    if (_movie.getPoster() != null) {
      return _movie.getPoster();
    }
    return null;
  }

  String _resolveTitle() {
    if (_movie.title != null) {
      return _movie.title;
    }
    return '';
  }
}
