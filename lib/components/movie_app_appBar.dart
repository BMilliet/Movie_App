import 'package:flutter/material.dart';
import 'package:movie_app/styles/movie_app_style.dart';
import 'package:movie_app/texts/movie_app_texts.dart';

class MovieAppBar {
  MovieAppBar();

  @override
  Widget basicAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[_logo(), _title(), _logoutButton()],
          )),
    );
  }

  Widget _logo() {
    return Container(
      height: 30,
      width: 30,
      color: Colors.cyan,
    );
  }

  Widget _title() {
    return Container(
      child: Text(MovideAppTexts.movie_app_title,
          style: MovieAppStyle.bright_style_s),
    );
  }

  Widget _logoutButton() {
    return IconButton(
      icon: Icon(Icons.exit_to_app),
      onPressed: () {
        print('logou');
      },
    );
  }
}
