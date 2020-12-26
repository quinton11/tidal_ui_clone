import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static const String namedRoute = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
            "HomePage",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
    );
  }
}