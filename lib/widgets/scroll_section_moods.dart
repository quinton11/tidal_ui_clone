import 'package:flutter/material.dart';

import '../widgets/genre_view.dart';

class ScrollSectionMood extends StatelessWidget {
  final String title;
  final genre;

  ScrollSectionMood({this.title, this.genre});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var listitem = <GenreView>[];
    genre.forEach((i) {
      listitem.add(
        GenreView(
          genretype: i.genre,
        ),
      );
    });

    return Container(
      //height: 450,
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints.tightForFinite(height: 130),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: 90,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ...listitem,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
