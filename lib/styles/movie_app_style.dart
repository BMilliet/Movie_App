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

  static const dark_style_m = const TextStyle(
      fontSize: MovieAppDimens.font_size_18,
      fontWeight: FontWeight.w800,
      fontFamily: 'Avenir',
      letterSpacing: 0.5,
      color: MovieAppColors.darkTextColor);

  static const bright_style_s = const TextStyle(
      fontSize: MovieAppDimens.font_size_16,
      fontWeight: FontWeight.w800,
      fontFamily: 'Avenir',
      letterSpacing: 0.5,
      color: MovieAppColors.highlightColor);

  static const bright_style_l = const TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w800,
      fontFamily: 'Avenir',
      letterSpacing: 0.5,
      color: MovieAppColors.highlightColor);

  static const bright_style_m = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      fontFamily: 'Avenir',
      letterSpacing: 0.5,
      color: MovieAppColors.highlightColor);
}
