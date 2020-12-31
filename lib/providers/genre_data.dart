import 'package:flutter/material.dart';

import '../models/genre.dart';

class GenreData with ChangeNotifier {
  List<Genre> _genres = [
    Genre(
      genre: 'Hip-Hop',
    ),
    Genre(
      genre: 'Pop',
    ),
    Genre(
      genre: 'Dance',
    ),
    Genre(
      genre: 'Country',
    ),
    Genre(
      genre: 'Electronic',
    ),
    Genre(
      genre: 'Classical',
    ),
    Genre(
      genre: 'Kids',
    ),
    Genre(
      genre: 'Blues',
    ),
    Genre(
      genre: 'K-Pop',
    ),
    Genre(
      genre: 'Folk / Americana',
    ),
    Genre(
      genre: 'Comedy',
    ),
    Genre(
      genre: 'DJ Selector',
    ),
    Genre(
      genre: 'R&B / Soul',
    ),
    Genre(
      genre: 'Rock / Indie',
    ),
    Genre(
      genre: 'Latin',
    ),
    Genre(
      genre: 'Jazz',
    ),
    Genre(
      genre: 'Reggae / Dancehall',
    ),
    Genre(
      genre: 'Metal',
    ),
    Genre(
      genre: 'Soundtracks',
    ),
    Genre(
      genre: 'Gospel / Christian',
    ),
    Genre(
      genre: 'Global',
    ),
    Genre(
      genre: 'Legacy',
    ),
  ];

  List<Genre> _moodsactsevents = [
    Genre(
      genre: 'Holiday',
    ),
    Genre(
      genre: 'At Home',
    ),
    Genre(
      genre: 'Workout',
    ),
    Genre(
      genre: 'Party',
    ),
    Genre(
      genre: 'Relax',
    ),
    Genre(
      genre: 'Focus',
    ),
    Genre(
      genre: 'Wellness',
    ),
    Genre(
      genre: 'Romance',
    ),
  ];

  List<Genre> get genres {
    return [..._genres];
  }

  List<Genre> get moodsactsevents {
    return [..._moodsactsevents];
  }
}
