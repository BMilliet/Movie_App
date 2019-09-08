import 'dart:async';

import 'package:movie_app/components/movie_app_pageView.dart';

class MoviesBloc {
  final _counterStateController = StreamController<double>();

  StreamSink<double> get _inCounter => _counterStateController.sink;
  Stream<double> get counter => _counterStateController.stream;

  void changePageViewState(MovieAppPageView pageView) {
    double pageValue = pageView.controller.page;
    _inCounter.add(pageValue);
  }

  void dispose() {
    _counterStateController.close();
  }
}
