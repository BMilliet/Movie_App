import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailBloc {
  IconData _iconData = Icons.favorite_border;
  final _iconDataStateController = StreamController<IconData>();

  StreamSink<IconData> get _inIconData => _iconDataStateController.sink;
  Stream<IconData> get iconData => _iconDataStateController.stream;

  void switchIcon() {
    if (_iconData == Icons.favorite_border) {
      _iconData = Icons.favorite;
    } else {
      _iconData = Icons.favorite_border;
    }
    _inIconData.add(_iconData);
  }

  void dispose() {
    _iconDataStateController.close();
  }
}
