import 'package:flutter/material.dart';

import '../custom_icons/kebab_menu_icons.dart';
import '../custom_icons/contact_icon_icons.dart';

//import '../custom_icons/radio_icons.dart' as rad;

class ArtistView extends StatelessWidget {
  final name;
  final image;

  ArtistView({
    this.name,
    this.image,
  });

  void _settingbottommodalsheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      //barrierColor: Colors.black,

      builder: (BuildContext ctx) {
        return Container(
          //height: 800,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border(
              top: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
          //color: Colors.black,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[800],
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite_outline,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Add to My Collection",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite_outline,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Bio",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.share_outlined,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Share",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.radio_outlined,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Go to Artist Radio",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  ContactIcon.users,
                  color: Color.fromRGBO(3, 252, 186, 1),
                  size: 30,
                ),
                title: Text(
                  "Credits",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => null,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //Width of row
    final width = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),
          Expanded(
            //width: width - 132,
            child: SizedBox(
              height: 17,
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              KebabMenu.kebab_vertical,
              color: Colors.grey[500],
            ),
            onPressed: () {
              _settingbottommodalsheet(context);
            },
          )
        ],
      ),
    );
  }
}
