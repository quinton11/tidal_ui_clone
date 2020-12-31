import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'screens/Main_screen.dart';
import 'providers/album_data.dart';
import 'providers/track_data.dart';
import 'providers/artist_data.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      statusBarColor: Colors.black,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => AlbumData(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => TrackData(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => ArtistData(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "KumbhSans",
        ),
        //initialRoute: '',
        home: MainScreen(),
      ),
    );
  }
}
