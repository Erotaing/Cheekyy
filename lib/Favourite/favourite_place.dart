// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../Screen/navbar_screen.dart';

class FavoritePlace extends StatefulWidget {
  const FavoritePlace({super.key});

  @override
  State<FavoritePlace> createState() => _FavoritePlaceState();
}

class _FavoritePlaceState extends State<FavoritePlace> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //searchappbar
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue[400],
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Favourite Place',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none, // To prevent clipping of the badge
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Your action here
                        },
                      ),
                      Positioned(
                        right: 0, // Position the badge to the right of the icon
                        top: 0,
                        left: 25, // Position the badge at the top of the icon
                        child: Container(
                          padding: EdgeInsets.all(
                              2), // Adjust the padding for the badge
                          decoration: BoxDecoration(
                            color: Colors.red, // Badge color
                            shape: BoxShape.circle, // Make it circular
                          ),
                          constraints: BoxConstraints(
                            minWidth: 15, // Minimum width of the badge
                            minHeight: 15, // Minimum height of the badge
                          ),
                          child: Center(
                            child: Text(
                              '0', // Badge number or content
                              style: TextStyle(
                                color: Colors.white, // Badge text color
                                fontSize: 12, // Font size
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          //The Card of
          Card(
            elevation: 8,
            margin: EdgeInsets.all(10),
            child: Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 4, // How much the shadow spreads
                    blurRadius: 5, // How blurry the shadow appears
                    offset: Offset(2, 3), // Changes position of shadow (x, y)
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            'images/panda.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Title',
                              style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Text(
                              'Locations',
                              style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Row(
                              children: List.generate(
                                  5,
                                  (index) => Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
