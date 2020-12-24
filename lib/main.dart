import 'package:flutter/material.dart';
import "custom_icons/elusive_video_icons.dart";
//import "custom_icons/tidal_icon_icons.dart";
import "custom_icons/home_icon_icons.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.black,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "KumbhSans",
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Holds current Index of selected icon in bottomdrawer
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Tidal UI"),
        backgroundColor: Color.fromRGBO(0, 0, 0, 0)
      ),
      body: Center(
        child: Text(
          "HomePage",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
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

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
