import 'package:flutter/material.dart';

import '../models/album.dart';

class AlbumData with ChangeNotifier {
  List<Album> _suggestednewalbums = [
    Album(
        artistes: "Natanael Cano, Ovi, Junior H",
        explicit: true,
        mastered: true,
        image: 'images/Las3Torres.jpg',
        title: "Las 3 Torres"),
    Album(
      artistes: "Rubi Rose",
      explicit: true,
      image: 'images/Forthestreet.jpg',
      mastered: true,
      title: "For The Streets",
    ),
    Album(
      artistes: "Juan Luis Guerra",
      explicit: true,
      image: 'images/prive.jpg',
      mastered: true,
      title: "Privé",
    ),
    Album(
      artistes: "apltn",
      explicit: true,
      image: 'images/apltn.jpg',
      mastered: true,
      title: "Vibe Out to Help Out",
    ),
    Album(
      artistes: "T9INE",
      explicit: true,
      image: 'images/T9ine.jpg',
      mastered: true,
      title: "Fast Life Living",
    ),
    Album(
      artistes: "Lil ManMan",
      explicit: true,
      image: 'images/lilmanman.jpg',
      mastered: true,
      title: "Too Much Money",
    ),
    Album(
      artistes: "Julia Stone",
      explicit: true,
      image: 'images/julia stone.jpg',
      mastered: true,
      title: "Twin",
    ),
    Album(
      artistes: "Buju Banton",
      explicit: true,
      image: 'images/tilshiloh.jpg',
      mastered: true,
      title: "'Til Shiloh",
    ),
    Album(
      artistes: "Kweku Smoke",
      explicit: true,
      image: 'images/kweku smoke.jpg',
      mastered: true,
      title: "Snoop Forever",
    ),
    Album(
      artistes: "Mayer Hawthorne",
      explicit: true,
      image: 'images/mayerhawthorne.jpg',
      mastered: true,
      title: "Rare Changes",
    ),

  ];

  List<Album> get suggestednewalbums {
    return [..._suggestednewalbums];
  }
}
