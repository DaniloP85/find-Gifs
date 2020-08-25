import 'package:flutter/material.dart';

class GifPage extends StatelessWidget {
  final String _gif;
  final String _title;

  GifPage(this._gif, this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          _title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gif),
      ),
    );
  }
}
