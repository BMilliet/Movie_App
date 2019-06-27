import 'package:flutter/material.dart';
import 'package:movie_app/components/movie_app_buttons.dart';
import 'package:movie_app/styles/movie_app_colors.dart';
import 'package:movie_app/styles/movie_app_dimens.dart';
import 'package:movie_app/styles/movie_app_style.dart';
import 'package:movie_app/texts/movie_app_texts.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: MovieAppColors.secondaryColor,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MovieAppDimens.stack_40,
                  left: MovieAppDimens.inline_20,
                  right: MovieAppDimens.inline_20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _movieDbLogo(),
                  _infoText(),
                  _textField(),
                  _loginButton()
                ],
              ),
            ),
          )),
    );
  }

  _movieDbLogo() {
    return Container(
        width: 180,
        height: 80,
        margin: EdgeInsets.only(bottom: MovieAppDimens.stack_40),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MovideAppTexts.movieDbLogo),
                fit: BoxFit.fill)));
  }

  Widget _infoText() {
    return Text(MovideAppTexts.login_info,
        style: MovieAppStyle.secondary_style_l);
  }

  Widget _textField() {
    return Container(
      margin: EdgeInsets.only(top: MovieAppDimens.stack_80),
      child: TextField(
        style: MovieAppStyle.light_style_m,
        decoration: InputDecoration(
          labelStyle: MovieAppStyle.light_style_m,
          labelText: 'MovieDB key',
          fillColor: Colors.white,
        ),
        onSubmitted: (text) {
          print(text);
        },
      ),
    );
  }

  Widget _loginButton() {
    return Container(
        margin: EdgeInsets.fromLTRB(
            MovieAppDimens.inline_4,
            MovieAppDimens.stack_40,
            MovieAppDimens.inline_4,
            MovieAppDimens.stack_4),
        child: Row(
          children: [
            Expanded(
                child: MovieAppButtons()
                    .materialButton(MovideAppTexts.login_button, _login)),
          ],
        ));
  }

  void _login() {
    print('login');
  }
}
