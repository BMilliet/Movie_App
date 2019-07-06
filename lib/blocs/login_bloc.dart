import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_app/infra/api.dart';
import 'package:movie_app/infra/url_manager.dart';
import 'package:movie_app/models/all_movies.dart';
import 'package:movie_app/texts/movie_app_texts.dart';

class LoginBloc {
  final api = Api();

  Future<AllMovies> makeRequest(String key) async {
    var url = UrlManager().trendingMovieUrl(key);
    try {
      var decodedJson = await Api().request(url);
      AllMovies movies = new AllMovies.fromJson(decodedJson);
      return movies;
    } catch (error) {
      print(error);
    }
  }

  void loginAction(
      TextEditingController textField,
      GlobalKey<FormState> formKey,
      Function onSuccess(AllMovies),
      Function onFail) async {
    if (formKey.currentState.validate()) {
      var movies = await makeRequest(textField.text);

      if (isValidAllMovies(movies)) {
        onSuccess(movies);
      } else {
        onFail();
      }
    }
  }

  validateForm(dynamic value, TextEditingController keyFieldController) {
    if (isInvalidKeyFormat(value)) {
      keyFieldController.clear();
      return MovideAppTexts.form_error;
    }
  }

  bool isValidAllMovies(movies) {
    return movies != null;
  }

  bool isInvalidKeyFormat(value) {
    return (value == null || value.trim() == null || value.trim().isEmpty);
  }
}
