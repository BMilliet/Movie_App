import 'package:flutter/widgets.dart';
import 'package:movie_app/components/movie_card.dart';

class MovieAppPageView extends PageView {
  PageController controller =
      PageController(viewportFraction: 0.45, initialPage: 0);
  var currentPageValue = 0.0;

  @override
  Widget build(List<MovieCard> cards, double height) {
    return Container(
        height: height,
        child: PageView.builder(
          controller: controller,
          itemBuilder: (context, position) {
            if (position == currentPageValue.floor()) {
              return Transform(
                transform: Matrix4.identity()
                  ..rotateX(currentPageValue - position),
                child: cards[position],
              );
            } else if (position == currentPageValue.floor() + 1) {
              return Transform(
                transform: Matrix4.identity()
                  ..rotateX(currentPageValue - position),
                child: cards[position],
              );
            } else {
              return Transform(
                transform: Matrix4.identity()
                  ..rotateX(currentPageValue - position),
                child: cards[position],
              );
            }
          },
          itemCount: cards.length,
        ));
  }
}
