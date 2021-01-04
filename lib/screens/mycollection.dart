import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tidal_ui/custom_icons/elusive_download_icons.dart';
import 'package:tidal_ui/custom_icons/elusive_video_icons.dart';
import 'package:tidal_ui/custom_icons/linecons_music_icons.dart';
import 'package:tidal_ui/custom_icons/radio_icons.dart' as rad;
import 'package:tidal_ui/providers/album_data.dart';
import 'package:tidal_ui/widgets/scroll_section_mod.dart';

class MyCollection extends StatelessWidget {
  static const namedRoute = '/mycollection';
  @override
  Widget build(BuildContext context) {
    final albumData = Provider.of<AlbumData>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        title: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            'My Collection',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        actions: <Widget>[
          Icon(
            Icons.settings_outlined,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      rad.Radio.radio_tower,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'My Mix',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.playlist_add_check,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'Playlists',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.album,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'Albums',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      LineconsMusic.music,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'Tracks',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      ElusiveVideo.video,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'Videos',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.mic,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'Artists',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      ElusiveDownload.download,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'Downloaded',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              ScrollSectionMod(
                albums: albumData.recentactivity,
                title: 'Recent Activity',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
