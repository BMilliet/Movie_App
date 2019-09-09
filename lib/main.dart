import 'package:flutter/material.dart';
import 'package:movie_app/infra/named_routes.dart';
import 'package:movie_app/infra/router.dart';
import 'package:movie_app/texts/movie_app_texts.dart';

void main() => runApp(MovieApp());

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: MovideAppTexts.movie_app_title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: Router.generatedRoute,
        initialRoute: login);
  }
}
