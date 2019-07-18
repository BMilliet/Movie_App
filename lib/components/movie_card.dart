import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/styles/movie_app_dimens.dart';
import 'package:movie_app/styles/movie_app_style.dart';

class MovieCard extends StatelessWidget {
  Movie _movie;
  final double _cardWidth = 180;

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
                  width: _cardWidth,
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.network(
                      _movie.getPoster(),
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
                      _movie.title,
                      style: MovieAppStyle.bright_style_s,
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
