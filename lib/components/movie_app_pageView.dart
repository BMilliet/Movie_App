import 'package:flutter/widgets.dart';
import 'package:movie_app/components/movie_card.dart';

class MovieAppPageView extends PageView {
  PageController controller =
      PageController(viewportFraction: 0.45, initialPage: 0);

  @override
  Widget build(List<MovieCard> cards, double currentPageValue, double height) {
    return Container(
        height: height,
        child: PageView.builder(
          controller: controller,
          itemBuilder: (context, position) {
            return Transform(
              transform: Matrix4.identity()
                ..rotateX(currentPageValue - position),
              child: cards[position],
            );
          },
          itemCount: cards.length,
        ));
  }
}
