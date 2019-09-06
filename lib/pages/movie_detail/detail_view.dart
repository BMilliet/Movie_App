import 'package:flutter/material.dart';
import 'package:movie_app/components/movie_app_appBar.dart';
import 'package:movie_app/helpers/movie_info_helper.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/pages/movie_detail/detail_bloc.dart';
import 'package:movie_app/styles/movie_app_style.dart';

// ignore: must_be_immutable
class DetailView extends StatefulWidget {
  Movie _movie;
  DetailView(this._movie);

  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  Color _backGroundColor = Colors.black;
  final _bloc = DetailBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      appBar: MovieAppBar.basicAppBar(context),
      body: SafeArea(child: _stack()),
    );
  }

  Widget _stack() {
    return Stack(
      children: <Widget>[_listView(), _informations()],
    );
  }

  Widget _listView() {
    return ListView(children: [_posterMask(), _emptyContainer(180)]);
  }

  Widget _informations() {
    return ListView(
      children: [
        _favoriteIconRow(),
        _emptyContainer(350),
        _titles(),
        _overview()
      ],
    );
  }

  Widget _favoriteIconRow() {
    return StreamBuilder(
      stream: _bloc.iconData,
      initialData: Icons.favorite_border,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  snapshot.data,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  _bloc.switchIcon();
                },
              )
            ],
          ),
        );
      },
    );
  }

  Widget _emptyContainer(double height) {
    return Container(
      height: height,
      color: Colors.transparent,
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
        child: Image.network(MovieInfoHelper.resolvePoster(widget._movie),
            alignment: Alignment.center, fit: BoxFit.cover));
  }

  Widget _titles() {
    return Container(
        child: Text(
      MovieInfoHelper.resolveTitle(widget._movie),
      style: MovieAppStyle.bright_style_l,
    ));
  }

  Widget _overview() {
    return Container(
        padding: EdgeInsets.only(top: 16),
        child:
            Text(widget._movie.overview, style: MovieAppStyle.bright_style_m));
  }
}
