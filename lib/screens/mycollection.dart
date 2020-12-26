import 'package:flutter/material.dart';

class MyCollection extends StatelessWidget {

  static const namedRoute = '/mycollection';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
            "My Collection",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
    );
  }
}