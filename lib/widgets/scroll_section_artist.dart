import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

import 'package:tidal_ui/widgets/album_view.dart';
import 'package:tidal_ui/widgets/sug_artist_view.dart';

//import '../providers/album_data.dart';

class ScrollSectionArtist extends StatelessWidget {
  final String title;
  final artists;
  //final List<dynamic> albums;

  ScrollSectionArtist({
    this.title,
    this.artists,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      //height: 450,
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints.tightForFinite(height: 308),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
            height: 220,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) => SugArtistView(
                artists: artists[index].name,
                image: artists[index].image,
              ),
              separatorBuilder: (ctx, index) => SizedBox(
                width: 16,
              ),
              itemCount: artists.length,
            ),
          ),
        ],
      ),
    );
  }
}
