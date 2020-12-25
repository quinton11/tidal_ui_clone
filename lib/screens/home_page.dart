import 'package:flutter/material.dart';

import '../widgets/bottom_navbar.dart';


class HomePage extends StatelessWidget {
  static const String namedRoute = '/'; 
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
          backgroundColor: Color.fromRGBO(0, 0, 0, 0)),
      body: Center(
        child: Text(
          "HomePage",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavbar(),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
