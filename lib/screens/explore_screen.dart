import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {

  static const namedRoute = '/explore';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
            "Explore Screen",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
    );
  }
}