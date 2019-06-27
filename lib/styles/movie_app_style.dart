import 'package:flutter/material.dart';
import 'package:movie_app/styles/movie_app_colors.dart';
import 'package:movie_app/styles/movie_app_dimens.dart';

class MovieAppStyle {
  static const secondary_style_l = const TextStyle(
      fontSize: MovieAppDimens.font_size_22,
      fontWeight: FontWeight.w800,
      fontFamily: 'Avenir',
      letterSpacing: 0.5,
      color: MovieAppColors.primaryTextColor);

  static const light_style_m = const TextStyle(
      fontSize: MovieAppDimens.font_size_18,
      fontWeight: FontWeight.w800,
      fontFamily: 'Avenir',
      letterSpacing: 0.5,
      color: MovieAppColors.lightTextColor);
}
