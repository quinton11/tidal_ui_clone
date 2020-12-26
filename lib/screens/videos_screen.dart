import 'package:flutter/material.dart';

class VideosScreen extends StatelessWidget {

  static const namedRoute = '/videos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
            "Videos Screen",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
    );
  }
}