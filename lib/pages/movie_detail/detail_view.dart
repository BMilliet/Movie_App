import 'package:flutter/material.dart';
import 'package:movie_app/components/movie_app_appBar.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/styles/movie_app_style.dart';

class DetailView extends StatefulWidget {
  Movie _movie;
  DetailView(this._movie);

  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  Color _backGroundColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MovieAppBar.basicAppBar(context),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Container(
        color: _backGroundColor,
        child: ListView(
          children: [_posterMask(), _titles(), _overview()],
        ),
      ),
    );
  }

  Widget _posterMask() {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [_backGroundColor, Colors.transparent])
            .createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      },
      blendMode: BlendMode.dstIn,
      child: _poster(),
    );
  }

  Widget _poster() {
    return Container(
        height: 600,
        child: Image.network(_resolvePoster(),
            alignment: Alignment.center, fit: BoxFit.cover));
  }

  Widget _titles() {
    return Container(
        child: Text(
      _resolveTitle(),
      style: MovieAppStyle.bright_style_l,
    ));
  }

  Widget _overview() {
    return Container(
        padding: EdgeInsets.only(top: 16),
        child:
            Text(widget._movie.overview, style: MovieAppStyle.bright_style_m));
  }

  dynamic _resolvePoster() {
    if (widget._movie.getPoster() != null) {
      return widget._movie.getPoster();
    }
    return null;
  }

  String _resolveTitle() {
    if (widget._movie.title != null) {
      return widget._movie.title;
    }
    return '';
  }
}
