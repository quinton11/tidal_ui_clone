import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/artist_data.dart';
import '../widgets/artist_view.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final artistData = Provider.of<ArtistData>(context);
    return Scaffold(
      appBar: SearchAppBar(
        height: 150,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.black,
        child: ListView.separated(
          itemBuilder: (context, index) => ArtistView(
            image: artistData.recentsearches[index].image,
            name: artistData.recentsearches[index].name,
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: 15,
          ),
          itemCount: artistData.recentsearches.length,
        ),
      ),
    );
  }
}

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  //static const namedRoute = '/search';

  const SearchAppBar({Key key, this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border(
          bottom: BorderSide(color: Colors.black),
        ),
      ),
      margin: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Container(
            height: height - 30,
            color: Colors.black,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                SizedBox(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  width: 50,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Recent Searches',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Clear',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
