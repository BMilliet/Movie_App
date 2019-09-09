import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/helpers/favorite_icon_manager.dart';

class DetailBloc {
  final FavoriteIconManager _favoriteIconManager = FavoriteIconManager();
  final _iconStateController = StreamController<Icon>();

  StreamSink<Icon> get _inIcon => _iconStateController.sink;
  Stream<Icon> get icon => _iconStateController.stream;

  void switchIcon() {
    _favoriteIconManager.switchIcon();
    _inIcon.add(_favoriteIconManager.icon);
  }

  void dispose() {
    _iconStateController.close();
  }
}
