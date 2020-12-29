import 'package:flutter/material.dart';

import '../widgets/scroll_section.dart';

//import '../providers/album_data.dart';


//List albums = ;

class HomePage extends StatelessWidget {
  static const String namedRoute = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ScrollSection(title: "Suggested New Albums",),
              ScrollSection(title: "Popular Playlists",),
              ScrollSection(title: "Popular Albums",),
              ScrollSection(title: "In Memoriam",),
            ],
          ),
        ),
      ),
    );
  }
}
