import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/styles/movie_app_dimens.dart';
import 'package:movie_app/styles/movie_app_style.dart';

class MovieCard extends StatelessWidget {
  Movie _movie;
  Function _actionCallback;

  MovieCard(this._movie, this._actionCallback);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Stack(
          children: <Widget>[
            Container(
                child: GestureDetector(
              onTap: _actionCallback,
              child: Image.network(
                _resolvePoster(),
                height: MovieAppDimens.stack_300,
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            )),
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
