import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

import 'package:tidal_ui/widgets/album_view.dart';

//import '../providers/album_data.dart';

class ScrollSectionGenre extends StatelessWidget {
  final String title;
  final genre;

  ScrollSectionGenre({this.title,this.genre});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      //height: 450,
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints.tightForFinite(height: 328),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    "View as list",
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: width,
            height: 250,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) => AlbumView(
                albumname: genre[index].title,
                artists: genre[index].artistes,
                explicit: genre[index].explicit,
                image: genre[index].image,
                mastered: genre[index].mastered,
              ),
              separatorBuilder: (ctx, index) => SizedBox(
                width: 16,
              ),
              itemCount: genre.length,
            ),
          ),
        ],
      ),
    );
  }
}