import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _search;
  int _offSet;
  String path =
      "https://api.giphy.com/v1/gifs/trending?api_key=RTkOASZFZKGbOML5pwiTu9Epm6C05Ir0";

  Future<Map> _getGifs() async {
    http.Response response;

    if (_search == null) {
      response = await http.get("$path&limit=20&rating=g");
    } else {
      response = await http
          .get("$path&q=$_search&limit=20&offset=$_offSet&rating=g&lang=en");
    }
    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _getGifs().then((map){
      print(map);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
