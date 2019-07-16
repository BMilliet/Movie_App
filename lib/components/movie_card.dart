import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

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
                  height: 400,
                  width: 280,
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.network(
                      _movie.getPoster(),
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  )),
              Positioned(
                left: 10,
                bottom: 10,
                child: Text(_movie.title),
              ),
            ],
          )),
    );
  }
}
