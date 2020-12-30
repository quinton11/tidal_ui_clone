import 'package:flutter/material.dart';

class TrackView extends StatelessWidget {
  final mastered;
  final explicit;
  final trackname;
  final artists;
  final image;

  TrackView(
      {this.mastered, this.explicit, this.trackname, this.artists, this.image});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),
          Container(
            width: width-90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 17,
                  child: Container(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        //Album Name
                        Container(
                          width: 100,
                          child: Text(
                            trackname,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: 12,
                          height: 12,
                          padding: EdgeInsets.only(
                            top: 2,
                            left: 2,
                            bottom: 2,
                            right: 2,
                          ),
                          child: Text(
                            'E',
                            style: TextStyle(
                                fontFamily: "KumbhaSans",
                                fontSize: 8,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(2),
                            ),
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 3,
                            bottom: 2,
                            left: 2,
                            right: 2,
                          ),
                          width: 12,
                          height: 12,
                          child: Text(
                            'M',
                            style: TextStyle(
                              fontFamily: "KumbhSans",
                              fontSize: 7,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(2),
                            ),
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  artists,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
