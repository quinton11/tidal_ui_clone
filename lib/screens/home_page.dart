import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/scroll_section.dart';
import '../providers/album_data.dart';
import '../providers/track_data.dart';
import '../widgets/scrollsection_track.dart';

//import '../providers/album_data.dart';

//List albums = ;

class HomePage extends StatelessWidget {
  static const String namedRoute = '/';
  @override
  Widget build(BuildContext context) {
    final albumData = Provider.of<AlbumData>(context);
    final trackData = Provider.of<TrackData>(context);
    final sug = albumData.suggestednewalbums;
    final pop = albumData.popularalbums;
    final inm = albumData.inmemoriam;
    final newrel = albumData.newreleases;
    final sugtracks = trackData.suggestednewtracks;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ScrollSection(
                title: "In Memoriam",
                albums: inm,
              ),
              TrackScrollSection(
                title: 'Suggested New Tracks',
                tracks: sugtracks,
              ),
              ScrollSection(
                title: "New Releases For You",
                albums: newrel,
              ),
              ScrollSection(
                title: "Popular Albums",
                albums: pop,
              ),
              ScrollSection(
                title: "Suggested New Albums",
                albums: sug,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
