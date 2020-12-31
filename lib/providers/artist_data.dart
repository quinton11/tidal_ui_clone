import 'package:flutter/material.dart';

import '../models/artist.dart';

class ArtistData with ChangeNotifier {
  List<Artist> _recentsearches = [
    Artist(
      image: 'images/cole.jpg',
      name: 'J. Cole',
    ),
    Artist(
      image: 'images/dualipa.jpg',
      name: 'Dua Lipa',
    ),
    Artist(
      image: 'images/mobb.jpg',
      name: 'Mobb Deep',
    ),
    Artist(
      image: 'images/drake (2).jpg',
      name: 'Drake',
    ),
    Artist(
      image: 'images/kendrick.jpg',
      name: 'Kendrick Lamar',
    ),
    Artist(
      image: 'images/nas.jpg',
      name: 'Nas',
    ),
    Artist(
      image: 'images/lauryn.jpg',
      name: 'Ms. Lauryn Hill',
    ),
    Artist(
      image: 'images/gibbs.jpg',
      name: 'Freddie Gibbs',
    ),
    Artist(
      image: 'images/cozz.jpg',
      name: 'Cozz',
    ),
    Artist(
      image: 'images/lute.jpg',
      name: 'Lute',
    ),
    Artist(
      image: 'images/rick.jpg',
      name: 'Rick Ross',
    ),
    Artist(
      image: 'images/dave.jpg',
      name: 'Dave East',
    ),
    Artist(
      image: 'images/brent.jpg',
      name: 'Brent Faiyaz',
    ),
    Artist(
      image: 'images/goldlink.jpg',
      name: 'GoldLink',
    ),
    Artist(
      image: 'images/lecrae.jpg',
      name: 'Lecrae',
    ),
  ];

  List<Artist> get recentsearches {
    return [..._recentsearches];
  }
}
