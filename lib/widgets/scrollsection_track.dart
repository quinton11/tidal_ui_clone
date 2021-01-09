import 'package:flutter/material.dart';
import 'package:tidal_ui/screens/explore_screen.dart';

import 'track_view.dart';

class TrackScrollSection extends StatelessWidget {
  final String title;
  final tracks;

  TrackScrollSection({
    this.title,
    this.tracks,
  });
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final subtracks = tracks.sublist(0, 5);
    return Container(
      //height: 450,
      margin: EdgeInsets.only(
        bottom: 50,
      ),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints.tightForFinite(height: 430),
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
                  autofocus: false,
                  clipBehavior: Clip.none,
                  onPressed: () => Navigator.push(
                    context,
                    FadeRoute(
                      page: TrackListScreen(
                        title: title,
                        tracks: tracks,
                      ),
                    ),
                  ),
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
            height: 350,
            width: width,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => TrackView(
                artists: subtracks[index].artists,
                explicit: true,
                image: subtracks[index].image,
                mastered: true,
                trackname: subtracks[index].title,
              ),
              separatorBuilder: (ctx, index) => SizedBox(
                height: 15,
              ),
              itemCount: subtracks.length,
            ),
          ),
        ],
      ),
    );
  }
}

class TrackListScreen extends StatelessWidget {
  final title;
  final tracks;

  TrackListScreen({
    this.title,
    this.tracks,
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
        child: ListView.separated(
            itemBuilder: (ctx, index) => TrackView(
                  artists: tracks[index].artists,
                  explicit: true,
                  image: tracks[index].image,
                  mastered: true,
                  trackname: tracks[index].title,
                ),
            separatorBuilder: (ctx, index) => SizedBox(
                  height: 15,
                ),
            itemCount: tracks.length),
      ),
    );
  }
}
