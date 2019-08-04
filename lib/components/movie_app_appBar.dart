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
      title: Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[_title(), _logoutButton()],
          )),
    );
  }

  Widget _title() {
    return Container(
      child: Text(MovideAppTexts.movie_app_title,
          style: MovieAppStyle.dark_style_m),
    );
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
