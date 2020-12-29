import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter/services.dart';
//import 'package:custom_navigator/custom_navigation.dart';

//import '../widgets/bottom_navbar.dart';

import '../custom_icons/elusive_video_icons.dart';
import '../custom_icons/home_icon_icons.dart';

import 'home_page.dart';
import 'mycollection.dart';
import 'videos_screen.dart';
import 'explore_screen.dart';

//import '../utility/destination.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  int _activepageindex = 0;
  List _index = [0];

  List<String> _pageroutes = [
    HomePage.namedRoute,
    VideosScreen.namedRoute,
    ExploreScreen.namedRoute,
    MyCollection.namedRoute
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        title: Text('Tidal UI'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          if (_navigatorKey.currentState.canPop()) {
            _index.removeAt(0);
            _navigatorKey.currentState.pop();
            setState(() {
              _activepageindex = _index[0];
            });
            return false;
          }
          return true;
        },
        child: Navigator(
          key: _navigatorKey,
          initialRoute: '/',
          onGenerateRoute: (RouteSettings settings) {
            WidgetBuilder builder;

            switch (settings.name) {
              case HomePage.namedRoute:
                builder = (BuildContext context) => HomePage();
                break;

              case VideosScreen.namedRoute:
                builder = (BuildContext context) => VideosScreen();
                break;

              case ExploreScreen.namedRoute:
                builder = (BuildContext context) => ExploreScreen();
                break;

              case MyCollection.namedRoute:
                builder = (BuildContext context) => MyCollection();
                break;

              default:
                throw Exception('Invalid route: ${settings.name}');
            }
            return MaterialPageRoute(
              builder: builder,
              settings: settings,
            );
          },
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromRGBO(61, 53, 53, 1),
              width: 0.8,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          onTap: (int index) {
            setState(() {
              //_previouspageindex = _activepageindex;
              _activepageindex = index;
            });
            _index.insert(0, _activepageindex);
            _navigatorKey.currentState.pushNamed(_pageroutes[_activepageindex]);
          },
          selectedItemColor: Color.fromRGBO(3, 252, 186, 1),
          unselectedItemColor: Color.fromRGBO(92, 88, 88, 1),
          currentIndex: _activepageindex,
          elevation: 8.0,
          selectedFontSize: 12.0,
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
      ),
    );
  }
}
