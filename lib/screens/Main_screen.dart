import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
  int _previouspageindex = 0;

  /*List<Destination> allDestinations = [
    Destination(
        HomePage.namedRoute, HomeIcon.home, Color.fromRGBO(44, 51, 49, 0)),
    Destination(VideosScreen.namedRoute, ElusiveVideo.video,
        Color.fromRGBO(44, 51, 49, 0)),
    Destination(
        ExploreScreen.namedRoute, Icons.search, Color.fromRGBO(44, 51, 49, 0)),
    Destination(MyCollection.namedRoute, Icons.favorite_outline,
        Color.fromRGBO(44, 51, 49, 0)),
  ];*/

  List<String> _pageroutes = [
    HomePage.namedRoute,
    VideosScreen.namedRoute,
    ExploreScreen.namedRoute,
    MyCollection.namedRoute
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        title: Text('Tidal UI'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          if (_navigatorKey.currentState.canPop()) {
            
            _navigatorKey.currentState.pop();
            setState(() {
              
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
          onTap: (int index) {
            setState(() {
              _previouspageindex = _activepageindex;
              _activepageindex = index;
            });
            _navigatorKey.currentState.pushNamed(_pageroutes[_activepageindex]);
          },
          selectedItemColor: Color.fromRGBO(3, 252, 186, 1),
          unselectedItemColor: Color.fromRGBO(92, 88, 88, 1),
          currentIndex: _activepageindex,
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

    /*return CupertinoTabScaffold( 
      backgroundColor: Colors.black,
      tabBar:  CupertinoTabBar(
          inactiveColor: Color.fromRGBO(92, 88, 88, 1),
          activeColor: Color.fromRGBO(3, 252, 186, 1),
          backgroundColor: Colors.black,
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
    );*/
  }
}
