import 'package:flutter/material.dart';

class AlbumViewMod extends StatelessWidget {
  final mastered;
  final explicit;
  final albumname;
  final artists;
  final image;
  AlbumViewMod({
    this.albumname,
    this.artists,
    this.image,
    this.explicit,
    this.mastered,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300,
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),

          //For Album detail
          SizedBox(
            height: 12,
            child: Container(
              width: 100,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Album Name
                  Container(
                    width: 70,
                    child: Text(
                      albumname,
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
    );
  }
}
