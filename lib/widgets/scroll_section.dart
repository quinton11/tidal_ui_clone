import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tidal_ui/widgets/album_view.dart';

import '../providers/album_data.dart';

class ScrollSection extends StatelessWidget {
  final String title;
  //final List<dynamic> albums;

  ScrollSection({this.title});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final albumData = Provider.of<AlbumData>(context);
    final albums = albumData.suggestednewalbums;

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
                    "View all",
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

/* 
SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 145,
                      height: 150,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 145,
                      height: 150,
                      color: Colors.amber[200],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 145,
                      height: 150,
                      color: Colors.amber[600],
                    ),
                  ],
                ),
              ),
*/
