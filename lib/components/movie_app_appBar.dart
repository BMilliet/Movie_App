import 'package:flutter/material.dart';
import 'package:movie_app/styles/movie_app_colors.dart';
import 'package:movie_app/styles/movie_app_style.dart';
import 'package:movie_app/texts/movie_app_texts.dart';

class MovieAppBar {
  MovieAppBar();

  @override
  AppBar basicAppBar() {
    return AppBar(
        backgroundColor: MovieAppColors.primaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: _title(),
        leading: _logoutButton());
  }

  Widget _title() {
    return Text(MovideAppTexts.movie_app_title,
        style: MovieAppStyle.dark_style_m);
  }

  Widget _logoutButton() {
    return IconButton(
      icon: Icon(Icons.exit_to_app),
      color: MovieAppColors.secondaryColor,
      onPressed: () {
        print('logout');
      },
    );
  }
}
