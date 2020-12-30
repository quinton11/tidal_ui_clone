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



  List<Album> _popularalbums = [
    Album(
        artistes: "Lil Durk",
        explicit: true,
        mastered: true,
        image: 'images/lildurk.png',
        title: "The Voice"),
    Album(
      artistes: "Megan Thee Stallion",
      explicit: true,
      image: 'images/megan.jpg',
      mastered: true,
      title: "Good News",
    ),
    Album(
      artistes: "Pop Smoke",
      explicit: true,
      image: 'images/popsmoke.png',
      mastered: true,
      title: "Shoot For The Stars",
    ),
    Album(
      artistes: "Playboi Carti",
      explicit: true,
      image: 'images/playboi.jpg',
      mastered: true,
      title: "Whole Lotta Red",
    ),
    Album(
      artistes: "Roddy Ricch",
      explicit: true,
      image: 'images/roddyrich.jpg',
      mastered: true,
      title: "Please Excuse Me For Being Antisocial",
    ),
    Album(
      artistes: "The Weeknd",
      explicit: true,
      image: 'images/weeknd.jpg',
      mastered: true,
      title: "After Hours",
    ),
    Album(
      artistes: "Drake",
      explicit: true,
      image: 'images/drake.jpg',
      mastered: true,
      title: "Dark Lane Demo Tapes",
    ),
    Album(
      artistes: "JAY-Z",
      explicit: true,
      image: 'images/Jay-z.png',
      mastered: true,
      title: "4:44",
    ),
    Album(
      explicit: true,
      artistes: "Beyoncé",
      image: 'images/beyonce.jpg',
      mastered: true,
      title: "LEMONADE",
    ),
    Album(
      artistes: "Rihanna",
      explicit: true,
      image: 'images/rihanna.jpg',
      mastered: true,
      title: "ANTI (Deluxe)",
    ),
    Album(
      artistes: "Summer Walker",
      explicit: true,
      image: 'images/summerwalker.png',
      mastered: true,
      title: "Over It",
    ),
    Album(
      artistes: "Meek Mill",
      explicit: true,
      image: 'images/meekmill.jpg',
      mastered: true,
      title: "QUARANTINE PACK",
    ),
  ];



  List<Album> _inmemoriam = [
    Album(
        artistes: "Eddie Gale",
        explicit: true,
        mastered: true,
        image: 'images/eddiegale.jpg',
        title: "Eddie Gale's Ghetto Music"),
    Album(
      artistes: "Freddy Cole",
      explicit: true,
      image: 'images/Hewastheking.jpg',
      mastered: true,
      title: "He Was the King",
    ),
    Album(
      artistes: "Freddy Cole",
      explicit: true,
      image: 'images/mymoodisyou.jpg',
      mastered: true,
      title: "My Mood Is You",
    ),
    Album(
      artistes: "Jimmy Cobb",
      explicit: true,
      image: 'images/jimmycobb.jpg',
      mastered: true,
      title: "This I Dig of You",
    ),
    Album(
      artistes: "Brother Ah",
      explicit: true,
      image: 'images/brotherah.jpg',
      mastered: true,
      title: "Move Ever Onward",
    ),
    Album(
      artistes: "Greatest Hits",
      explicit: true,
      image: 'images/pointersisters.jpg',
      mastered: true,
      title: "The Pointer Sisters",
    ),
    Album(
      artistes: "Lucky Peterson",
      explicit: true,
      image: 'images/lucky.jpg',
      mastered: true,
      title: "50 - Just warming up !",
    ),
    Album(
      artistes: "Kraftwerk",
      explicit: true,
      image: 'images/kraftwerk.jpg',
      mastered: true,
      title: "'Trans-Europe Express",
    ),
    Album(
      artistes: "Kiing Shooter",
      explicit: true,
      image: 'images/kiing.jpg',
      mastered: true,
      title: "Still Outside",
    ),
    Album(
      artistes: "Tony Allen",
      explicit: true,
      image: 'images/tonyallen.jpg',
      mastered: true,
      title: "The Source",
    ),
    Album(
      artistes: "Fred The Godson",
      explicit: true,
      image: 'images/godlevel.jpg',
      mastered: true,
      title: "God Level",
    ),
    Album(
      artistes: "Bill Withers",
      explicit: true,
      image: 'images/billwithers.jpg',
      mastered: true,
      title: "Just As I Am",
    ),
  ];

  List<Album> _newreleasesforyou = [
    Album(
        artistes: "Cruch Calhoun",
        explicit: true,
        mastered: true,
        image: 'images/cruch.jpg',
        title: "Live from Boston"),
    Album(
      artistes: "Rampage",
      explicit: true,
      image: 'images/rampage.jpg',
      mastered: true,
      title: "Western Maryland Vibez",
    ),
    Album(
      artistes: "Total",
      explicit: true,
      image: 'images/total.jpg',
      mastered: true,
      title: "Pain",
    ),
    Album(
      artistes: "KRS-One",
      explicit: true,
      image: 'images/krsone.jpg',
      mastered: true,
      title: "Between Da Protests",
    ),
    Album(
      artistes: "AZ",
      explicit: true,
      image: 'images/andromeda.jpg',
      mastered: true,
      title: "ANDROMEDA",
    ),
    Album(
      artistes: "Jamal",
      explicit: true,
      image: 'images/Jamal.jpg',
      mastered: true,
      title: "Searching",
    ),
    Album(
      artistes: "chlothegod",
      explicit: true,
      image: 'images/chlo.jpg',
      mastered: true,
      title: "I Don't Mind",
    ),
    Album(
      artistes: "Troy Ave",
      explicit: true,
      image: 'images/troyave.jpg',
      mastered: true,
      title: "Miami to New York",
    ),
    Album(
      artistes: "Asiahn, Nailah Hunter",
      explicit: true,
      image: 'images/getaway.jpg',
      mastered: true,
      title: "Get Away (Acoustic)",
    ),
    Album(
      artistes: "Too \$hort, E-40",
      explicit: true,
      image: 'images/tooshort.png',
      mastered: true,
      title: "Ain't Gone Do It",
    ),
    Album(
      artistes: "Deborah Cox, Chris Bosh",
      explicit: true,
      image: 'images/santababy.jpg',
      mastered: true,
      title: "Santa Baby",
    ),
    Album(
      artistes: "Goodz",
      explicit: true,
      image: 'images/goodz.png',
      mastered: true,
      title: "This what NY Sound Like",
    ),
  ];

  List<Album> get suggestednewalbums {
    return [..._suggestednewalbums];
  }

  List<Album> get popularalbums {
    return [..._popularalbums];
  }

  List<Album> get inmemoriam {
    return [..._inmemoriam];
  }

  List<Album> get newreleases {
    return [..._newreleasesforyou];
  }
}
