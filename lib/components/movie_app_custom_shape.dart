import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieAppCustomShape {
  MovieAppCustomShape();

  Widget clipContainer(Container container) {
    return ClipPath(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        clipper: ClipHelper(),
        child: container);
  }
}

class ClipHelper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
