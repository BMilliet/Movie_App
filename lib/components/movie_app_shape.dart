import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieAppShape {
  MovieAppShape();

  Widget roundedShape() {
    return ClipPath(
      clipper: ClipTest(),
      child: Container(
        color: Colors.cyan,
      ),
    );
  }
}

class ClipTest extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 40);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
