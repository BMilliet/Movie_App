import 'package:flutter/material.dart';
import 'package:movie_app/styles/movie_app_colors.dart';
import 'package:movie_app/styles/movie_app_style.dart';
import 'package:movie_app/texts/movie_app_texts.dart';

class MovieAppBar {
  MovieAppBar();

  @override
  static AppBar basicAppBarWithLogout() {
    return AppBar(
        backgroundColor: MovieAppColors.primaryColor,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: _title(),
        actions: [_logoutButton()]);
  }

  static AppBar basicAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: MovieAppColors.primaryColor,
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: _backButton(context));
  }

  static Widget _backButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.black,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  static Widget _title() {
    return Text(MovideAppTexts.movie_app_title,
        style: MovieAppStyle.dark_style_m);
  }

  static Widget _logoutButton() {
    return IconButton(
      icon: Icon(Icons.exit_to_app),
      color: MovieAppColors.secondaryColor,
      onPressed: () {
        print('logout');
      },
    );
  }
}
