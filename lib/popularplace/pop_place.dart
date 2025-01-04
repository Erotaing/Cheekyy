import 'package:flutter/material.dart';

import '../Screen/hearticon.dart';
import '../Screen/navbar_screen.dart';

class PopularPlace extends StatefulWidget {
  const PopularPlace({super.key});

  @override
  State<PopularPlace> createState() => _PopularPlaceState();
}

class _PopularPlaceState extends State<PopularPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //searchappbar
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //topbar
                      Padding(
                        padding: EdgeInsets.only(top: 30),
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
                              'Popular Destination',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Stack(
                              clipBehavior:
                                  Clip.none, // To prevent clipping of the badge
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
                              ],
                            ),
                          ],
                        ),
                      ),
                      //searchbar
                      Padding(
                        padding: EdgeInsets.only(left: 16, right: 16, top: 40),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            prefixIcon: Icon(Icons.search),
                            hintStyle: TextStyle(color: Colors.blue),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 16.0),
                          ),
                        ),
                      ),
                      //topplace
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 50),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Card(
                                  elevation: 10,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 5.0),
                                  child: Container(
                                    height: 300,
                                    width: 195,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 200,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://via.placeholder.com/150'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5.0, right: 5.0),
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  child: Center(
                                                    child: HeartClickBtn(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Irence Red VedVet',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on,
                                                    color: Colors.blue[400],
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    'South Korea',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow[700],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      '5.0',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 10,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 5.0),
                                  child: Container(
                                    height: 300,
                                    width: 195,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 200,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://via.placeholder.com/150'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5.0, right: 5.0),
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  child: Center(
                                                    child: HeartClickBtn(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Irence Red VedVet',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on,
                                                    color: Colors.blue[400],
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    'South Korea',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellow[700],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      '5.0',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: ButtomNavBar(),
    );
  }
}
