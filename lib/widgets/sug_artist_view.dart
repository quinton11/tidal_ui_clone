import 'package:flutter/material.dart';

class SugArtistView extends StatelessWidget {
  final artists;
  final image;
  SugArtistView({
    this.artists,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300,
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 150,
            width: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            artists,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
