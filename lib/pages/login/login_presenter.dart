import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_app/infra/api.dart';
import 'package:movie_app/infra/url_manager.dart';
import 'package:movie_app/models/all_movies.dart';
import 'package:movie_app/texts/movie_app_texts.dart';

class LoginPresenter {
  final api = Api();

  dynamic _makeRequest({@required String key}) async {
    var url = UrlManager().trendingMovieUrl(key);

    try {
      var decodedJson = await api.request(url);
      AllMovies movies = new AllMovies.fromJson(decodedJson);
      return movies;
    } catch (error) {
      print(error);
    }
  }

  void loginAction(
      {@required TextEditingController textField,
      @required GlobalKey<FormState> formKey,
      @required Function onSuccess,
      @required Function onFail}) async {
    if (formKey.currentState.validate()) {
      var movies = await _makeRequest(key: textField.text);

      if (isValidAllMovies(movies)) {
        onSuccess(movies);
      } else {
        onFail();
      }
    }
  }

  validateForm(
      {@required dynamic value,
      @required TextEditingController keyFieldController}) {
    if (isInvalidKeyFormat(value)) {
      keyFieldController.clear();
      return MovideAppTexts.form_error;
    }
  }

  bool isValidAllMovies(movies) {
    return movies is AllMovies;
  }

  bool isInvalidKeyFormat(value) {
    return (value == null || value.trim() == null || value.trim().isEmpty);
  }
}
