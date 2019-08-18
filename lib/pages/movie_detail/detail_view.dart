import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: ,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Container(
        color: Colors.cyan,
      ),
    );
  }
}
