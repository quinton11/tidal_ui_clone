import 'package:flutter/material.dart';


import 'album_view.mod.dart';

class ScrollSectionMod extends StatelessWidget {
  final String title;
  final albums;
  //final List<dynamic> albums;

  ScrollSectionMod({
    this.title,
    this.albums,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      //height: 450,
      margin: EdgeInsets.only(
        bottom: 10,
        top: 20,
      ),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints.tightForFinite(height: 220),
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
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: width,
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) => AlbumViewMod(
                albumname: albums[index].title,
                artists: albums[index].artistes,
                explicit: albums[index].explicit,
                image: albums[index].image,
                mastered: albums[index].mastered,
              ),
              separatorBuilder: (ctx, index) => SizedBox(
                width: 16,
              ),
              itemCount: albums.length,
            ),
          ),
        ],
      ),
    );
  }
}
