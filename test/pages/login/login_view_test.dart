import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/texts/movie_app_texts.dart';
import 'package:movie_app/pages/login/login_view.dart';

import '../../test_helpers/widget_helper.dart';

void main() {
  final _imageFinder = find.byKey(Key(MovideAppTexts.logo_key));
  final _infoFinder = find.text(MovideAppTexts.login_info);
  final _textFormFieldFinder = find.byType(TextFormField);
  final _materialButtonFinder = find.byType(MaterialButton);

  testWidgets('LoginView finds all elements', (WidgetTester tester) async {
    const Key _loginViewKey = Key('loginViewKey');
    const LoginView _loginView = LoginView(key: _loginViewKey);

    await tester
        .pumpWidget(WidgetHelper.buildTestableWidget(widget: _loginView));

    final StatefulElement _loginViewElement =
        tester.element(find.byKey(_loginViewKey));
    final LoginViewState _loginViewState = _loginViewElement.state;

    expect(_loginViewState.widget, equals(_loginView));
    expect(_imageFinder, findsOneWidget);
    expect(_infoFinder, findsOneWidget);
    expect(_textFormFieldFinder, findsOneWidget);
    expect(_materialButtonFinder, findsOneWidget);
  });
}
