import 'package:flutter/material.dart';

import 'track_view.dart';

class TrackScrollSection extends StatelessWidget {
  final String title;
  final tracks;

  TrackScrollSection({this.title, this.tracks});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final subtracks = tracks.sublist(0, 5);
    return Container(
      //height: 450,
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints.tightForFinite(height: 400),
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
            height: 320,
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
