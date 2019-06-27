import 'package:flutter/material.dart';
import 'package:movie_app/styles/movie_app_colors.dart';

class MovieAppButtons {
  MovieAppButtons();

  Widget materialButton(String message, Function onPressed) {
    return MaterialButton(
      child: Text(message.toUpperCase()),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: MovieAppColors.primaryColor,
      splashColor: MovieAppColors.highlightColor,
      onPressed: onPressed,
    );
  }
}
