
import 'package:flutter/material.dart';

class CatInfo extends StatefulWidget {
  final String catBreed;
  final String catId;

  CatInfo({this.catBreed, this.catId});

  @override
  _CatInfoState createState() => _CatInfoState();
}

class _CatInfoState extends State<CatInfo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.catBreed),
        ),
        body: getCat());
  }

  Widget getCat() {
    var mediaSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: mediaSize.width,
        height: mediaSize.height,
      ),
    );
  }
}
