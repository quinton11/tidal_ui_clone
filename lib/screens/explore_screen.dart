import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:tidal_ui/custom_icons/calendar_empty_icons.dart';
import 'package:tidal_ui/custom_icons/podcasts_icons.dart';
import 'package:tidal_ui/custom_icons/tidal_rising_icons.dart';
import 'package:tidal_ui/custom_icons/tidal_x_icons.dart';
import 'package:tidal_ui/custom_icons/trophy_icon_icons.dart';
import 'package:tidal_ui/providers/album_data.dart';
import 'package:tidal_ui/providers/artist_data.dart';
import 'package:tidal_ui/widgets/scroll_section.dart';
import 'package:tidal_ui/widgets/scroll_section_artist.dart';
import 'package:tidal_ui/widgets/scroll_section_moods.dart';

import 'explore_search_screen.dart';
import '../widgets/scroll_section_genre.dart';
import '../providers/genre_data.dart';

class ExploreScreen extends StatelessWidget {
  static const namedRoute = '/explore';
  @override
  Widget build(BuildContext context) {
    final genreData = Provider.of<GenreData>(context);
    final albumData = Provider.of<AlbumData>(context);
    final pop = albumData.popularalbums;
    final artistData = Provider.of<ArtistData>(context);

    return Scaffold(
      appBar: CustomAppBar(
        height: 90,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ScrollSectionGenre(
                genre: genreData.genres,
                title: 'Genres',
              ),
              ScrollSectionMood(
                genre: genreData.moodsactsevents,
                title: 'Moods, Activities & Events',
              ),
              Wrap(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      CalendarEmpty.calendar_empty,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'New',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      TrophyIcon.trophy,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'Top',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Podcasts.podcast,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'Shows & Podcasts',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      TidalRising.signature,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'TIDAL Rising',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      TidalX.xing,
                      color: Color.fromRGBO(0, 251, 247, 1),
                    ),
                    title: Text(
                      'TIDAL X',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 30,
                    ),
                    padding: EdgeInsets.all(
                      10,
                    ),
                    child: TextButton(
                      onPressed: null,
                      child: Text(
                        'Clean Content',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ScrollSection(
                    albums: pop,
                    title: 'Suggested Albums for You',
                  ),
                  ScrollSectionArtist(
                    artists: artistData.suggestedartists,
                    title: 'Suggested Artists for You',
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      /* Center(
        child: Text(
          "Explore Screen",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),*/
      backgroundColor: Colors.black,
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({Key key, this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Colors.black,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          FadeRoute(
            page: SearchScreen(),
          ),
        ),
        child: Container(
          color: Colors.white,
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                title: Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

//Fading oage animation when moving to different screen
class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
