import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

import '../custom_icons/elusive_video_icons.dart';
import '../custom_icons/home_icon_icons.dart';

import '../screens/home_page.dart';
import '../screens/mycollection.dart';
import '../screens/videos_screen.dart';
import '../screens/explore_screen.dart';

class Cupert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        border: Border(
          top: BorderSide(
            color: Color.fromRGBO(61, 53, 53, 1),
            width: 0.8,
          ),
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              HomeIcon.home,
            ),
            label: "Home",
            backgroundColor: Color.fromRGBO(44, 51, 49, 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              ElusiveVideo.video,
            ),
            label: "Videos",
            backgroundColor: Color.fromRGBO(44, 51, 49, 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Explore",
            backgroundColor: Color.fromRGBO(44, 51, 49, 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "My Collection",
            backgroundColor: Color.fromRGBO(44, 51, 49, 0),
          )
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: HomePage(),
                );
              },
            );

          case 1:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: VideosScreen(),
                );
              },
            );

          case 2:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: ExploreScreen(),
                );
              },
            );

          case 3:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: MyCollection(),
                );
              },
            );

          default:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: HomePage(),
                );
              },
            );
        }
      },
    );
  }
}
