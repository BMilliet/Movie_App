import 'dart:async';

import 'package:movie_app/components/movie_app_pageView.dart';

class MoviesBloc {
  double _currentValue = 0;

  final _counterStateController = StreamController<double>();

  StreamSink<double> get _inCounter => _counterStateController.sink;
  Stream<double> get counter => _counterStateController.stream;

  void changePageViewState(MovieAppPageView pageView) {
    _currentValue = pageView.controller.page;
    _inCounter.add(_currentValue);
  }
}
