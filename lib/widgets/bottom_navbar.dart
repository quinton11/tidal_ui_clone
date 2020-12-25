import 'package:flutter/material.dart';

import '../custom_icons/elusive_video_icons.dart';
import '../custom_icons/home_icon_icons.dart';


class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Color.fromRGBO(61, 53, 53, 1),
              width: 0.8,
            ),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 10.0,
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          unselectedItemColor: Color.fromRGBO(92, 88, 88, 1),
          onTap: (int i) {
            setState(() {
              _currentIndex = i;
            });
          },
          selectedItemColor: Color.fromRGBO(3, 252, 186, 1),
          
          type: BottomNavigationBarType.fixed,
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
      );
  }
}