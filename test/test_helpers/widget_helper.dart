import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetHelper {
  static Widget buildTestableWidget({@required Widget widget}) {
    return MediaQuery(data: MediaQueryData(), child: MaterialApp(home: widget));
  }
}
