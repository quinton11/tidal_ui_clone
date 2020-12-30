import 'package:flutter/material.dart';

import '../models/track.dart';

class TrackData with ChangeNotifier {
  List<Track> _suggestednewtracks = [
    Track(
      artists: 'EARTHGANG, Wale',
      explicit: true,
      image: 'images/options.jpg',
      mastered: true,
      title: 'Options',
    ),
    Track(
      artists: 'Shepherds Reign',
      explicit: true,
      image: 'images/aiga.jpg',
      mastered: true,
      title: 'Aiga',
    ),
    Track(
      artists: 'Jasiah',
      explicit: true,
      image: 'images/poles.jpeg',
      mastered: true,
      title: 'Poles (Pt.2)',
    ),
    Track(
      artists: 'The Natvral',
      explicit: true,
      image: 'images/ramona.jpg',
      mastered: true,
      title: 'Ramona',
    ),
    Track(
      artists: 'Wavvyboi',
      explicit: true,
      image: 'images/phantom.jpg',
      mastered: true,
      title: 'phantom',
    ),
    Track(
      artists: 'No Savage',
      explicit: true,
      image: 'images/reaper.jpg',
      mastered: true,
      title: 'Reaper',
    ),
    Track(
      artists: 'Chaste',
      explicit: true,
      image: 'images/chaste.jpg',
      mastered: true,
      title: 'Right 4 U',
    ),
    Track(
      artists: 'Kidsnextdoor',
      explicit: true,
      image: 'images/rachel.jpg',
      mastered: true,
      title: 'Rachel',
    ),
    Track(
      artists: 'Besomorph, Behmer, Lunis',
      explicit: true,
      image: "images/besomorph.jpg",
      mastered: true,
      title: "What I've Done",
    ),
    Track(
      artists: 'Ayzha Nyree',
      explicit: true,
      image: 'images/ayzha.png',
      mastered: true,
      title: 'Holy Class',
    ),
    Track(
      artists: 'Joysad',
      explicit: true,
      image: 'images/joysad.jpg',
      mastered: true,
      title: '2020',
    ),
    Track(
      artists: 'TheHxliday',
      explicit: true,
      image: 'images/thehxliday.png',
      mastered: true,
      title: 'Laugh A Little',
    ),
    Track(
      artists: 'NLE Choppa',
      explicit: true,
      image: 'images/protect.jpg',
      mastered: true,
      title: 'Protect',
    ),
    Track(
      artists: 'NLE Choppa',
      explicit: true,
      image: 'images/jiggin.jpg',
      mastered: true,
      title: 'Jiggin',
    ),
    Track(
      artists: 'Fallin\'',
      explicit: true,
      image: 'images/fallin.jpg',
      mastered: true,
      title: "Why Don't We Stop",
    ),
    Track(
      artists: 'Eric Clapton, Van Morrison',
      explicit: true,
      image: 'images/clapton.jpg',
      mastered: true,
      title: 'Stand and Deliver',
    ),
    Track(
      artists: 'Lande Hekt',
      explicit: true,
      image: 'images/december.jpg',
      mastered: true,
      title: 'December',
    ),
    Track(
      artists: 'Lown',
      explicit: true,
      image: 'images/ejma.jpg',
      mastered: true,
      title: 'Ejma',
    ),
    Track(
      artists: 'Morgan Wade',
      explicit: true,
      image: 'images/morgan.jpg',
      mastered: true,
      title: 'Don\'t Cry',
    ),
    Track(
      artists: 'Stephen Sanchez',
      explicit: true,
      image: 'images/lady.jpg',
      mastered: true,
      title: 'Lady by the Sea',
    ),
  ];

  List<Track> get suggestednewtracks {
    return [..._suggestednewtracks];
  }
}
