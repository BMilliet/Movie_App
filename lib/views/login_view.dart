import 'package:flutter/material.dart';
import 'package:movie_app/blocs/login_bloc.dart';
import 'package:movie_app/components/movie_app_buttons.dart';
import 'package:movie_app/models/all_movies.dart';
import 'package:movie_app/styles/movie_app_colors.dart';
import 'package:movie_app/styles/movie_app_dimens.dart';
import 'package:movie_app/styles/movie_app_style.dart';
import 'package:movie_app/texts/movie_app_texts.dart';
import 'package:movie_app/views/main_view.dart';

class LoginView extends StatefulWidget {
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _loginBloc = LoginBloc();
  final _keyFieldController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: _loginBloc.allMovies,
          builder: (context, snapshot) {
            return Container(
                color: MovieAppColors.secondaryColor,
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(MovieAppDimens.stack_20),
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
                ));
          }),
    );
  }

  _movieDbLogo() {
    return Container(
        width: 180,
        height: 70,
        margin: EdgeInsets.only(bottom: MovieAppDimens.stack_40),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MovideAppTexts.movieDb_Logo),
                fit: BoxFit.fill)));
  }

  Widget _infoText() {
    return Text(MovideAppTexts.login_info,
        style: MovieAppStyle.secondary_style_l);
  }

  Widget _textField() {
    return Container(
        margin: EdgeInsets.only(top: MovieAppDimens.stack_80),
        child: Form(
          key: _formKey,
          child: TextFormField(
            controller: _keyFieldController,
            validator: (value) {
              if (value.trim().isEmpty || value.trim() == null) {
                _keyFieldController.clear();
                return MovideAppTexts.form_error;
              }
            },
            style: MovieAppStyle.light_style_m,
            decoration: InputDecoration(
              labelStyle: MovieAppStyle.light_style_m,
              labelText: MovideAppTexts.key_label,
              fillColor: Colors.white,
            ),
          ),
        ));
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

  void _login() async {
    var key = _keyFieldController.text;
    if (_formKey.currentState.validate()) {
      var movies = await _loginBloc.makeRequest(key);
      _goToMainView(movies);
    }
  }

  void _goToMainView(AllMovies movies) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainView(movies)),
    );
  }
}
