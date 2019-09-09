import 'package:flutter/material.dart';
import 'package:movie_app/helpers/movie_info_helper.dart';
import 'package:movie_app/infra/named_routes.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/styles/movie_app_colors.dart';
import 'package:movie_app/styles/movie_app_dimens.dart';
import 'package:movie_app/styles/movie_app_style.dart';
import 'package:movie_app/texts/movie_app_texts.dart';

// ignore: must_be_immutable
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
                    MovieInfoHelper.resolveTitle(_movie),
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
        image: MovieInfoHelper.resolvePoster(_movie),
        height: MovieAppDimens.stack_300,
        alignment: Alignment.center,
        fit: BoxFit.fill);
  }
}
