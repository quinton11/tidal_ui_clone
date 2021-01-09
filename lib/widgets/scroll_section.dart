import 'package:flutter/material.dart';
import 'package:tidal_ui/screens/explore_screen.dart';
//import 'package:provider/provider.dart';

import 'package:tidal_ui/widgets/album_view.dart';

//import '../providers/album_data.dart';

class ScrollSection extends StatelessWidget {
  final String title;
  final albums;
  //final List<dynamic> albums;

  ScrollSection({this.title, this.albums});

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
                  onPressed: () => Navigator.push(
                    context,
                    FadeRoute(
                      page: AlbumGridScreen(
                        albums: albums,
                        title: title,
                      ),
                    ),
                  ),
                  child: Text(
                    "View all",
                    style: TextStyle(
                      color: Colors.grey[600],
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

class AlbumGridScreen extends StatelessWidget {
  final title;
  final albums;

  AlbumGridScreen({
    this.title,
    this.albums,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.black,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 0.8,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            maxCrossAxisExtent: 170,

          ),
          scrollDirection: Axis.vertical,
          itemBuilder: (ctx, index) => AlbumView(
            albumname: albums[index].title,
            artists: albums[index].artistes,
            explicit: albums[index].explicit,
            image: albums[index].image,
            mastered: albums[index].mastered,
          ),
          itemCount: albums.length,
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
