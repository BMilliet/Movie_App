import 'dart:async';

import 'package:movie_app/components/movie_app_pageView.dart';

class MoviesBloc {
  double _pageViewValue = 0;

  final _counterStateController = StreamController<double>();

  StreamSink<double> get _inCounter => _counterStateController.sink;
  Stream<double> get counter => _counterStateController.stream;

  void changePageViewState(MovieAppPageView pageView) {
    pageView.currentPageValue = pageView.controller.page;
  }

  void _onTapAction() {
    print('tap on card');
  }
}
