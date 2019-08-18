import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class DetailView extends StatefulWidget {
  Movie _movie;
  DetailView(this._movie);

  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._movie.title)),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Container(
        color: Colors.cyan,
      ),
    );
  }
}
