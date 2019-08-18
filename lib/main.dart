import 'package:flutter/material.dart';
import 'package:movie_app/infra/named_routes.dart';
import 'package:movie_app/infra/router.dart';

void main() => runApp(MovieApp());

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movie app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: Router.generatedRoute,
        initialRoute: login);
  }
}
