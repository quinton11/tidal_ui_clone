import 'package:flutter/material.dart';

import '../custom_icons/kebab_menu_icons.dart';
//import '../custom_icons/radio_icons.dart' as rad;

class TrackView extends StatelessWidget {
  final mastered;
  final explicit;
  final trackname;
  final artists;
  final image;

  TrackView({
    this.mastered,
    this.explicit,
    this.trackname,
    this.artists,
    this.image,
  });

  void _settingbottommodalsheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      //barrierColor: Colors.black,

      builder: (BuildContext ctx) {
        return Container(
          //height: 800,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border(
              top: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
          //color: Colors.black,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            trackname,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            artists,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600],
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[800],
              ),
              ListTile(
                leading: Icon(
                  Icons.queue_play_next,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Play Next",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite_outline,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Add to My Collection",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.playlist_add,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Add to Playlist",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.share_outlined,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Share",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.radio_outlined,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Go to Track Radio",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outlined,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Credits",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.album_outlined,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Go to Album",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
            ],
          ),
        );
      },
    );
  }

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
            width: width - 132,
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
                          //width: 100,
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
                          width: 15,
                          height: 15,
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
                                fontSize: 9,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(2),
                            ),
                            color: Colors.grey[900],
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
                          width: 15,
                          height: 15,
                          child: Text(
                            'M',
                            style: TextStyle(
                              fontFamily: "KumbhSans",
                              fontSize: 9,
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
                      fontSize: 14),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              KebabMenu.kebab_vertical,
              color: Colors.grey[500],
            ),
            onPressed: () {
              _settingbottommodalsheet(context);
            },
          )
        ],
      ),
    );
  }
}
