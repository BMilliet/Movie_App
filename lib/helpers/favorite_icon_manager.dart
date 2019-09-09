import 'package:flutter/material.dart';

class FavoriteIconManager {
  Icon icon;

  Icon _emptyFavoriteIcon = Icon(
    Icons.favorite_border,
    size: 35,
    color: Colors.white,
  );

  Icon _filledFavoriteIcon = Icon(
    Icons.favorite,
    size: 35,
    color: Colors.red,
  );

  @override
  void initState() {
    icon = _emptyFavoriteIcon;
  }

  void switchIcon() {
    if (icon == _emptyFavoriteIcon) {
      icon = _filledFavoriteIcon;
    } else {
      icon = _emptyFavoriteIcon;
    }
  }
}
