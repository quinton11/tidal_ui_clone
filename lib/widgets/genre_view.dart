import 'package:flutter/material.dart';

class GenreView extends StatelessWidget {
  final String genretype;

  GenreView({this.genretype});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
        top: 10,
        bottom: 10,
        //left: 10
      ),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.all(15),
      child: Text(
        genretype,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
