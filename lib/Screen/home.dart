// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'navbar_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import './topdestination.dart';
import './carousel_image.dart';
import './hearticon.dart';
import '../DetailPlace/detail_place.dart';
import '../searchdes/search_des.dart';

class HOME extends StatelessWidget {
  const HOME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // AppBar
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Trip \n With Us",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic),
                            ),
                            Stack(
                              clipBehavior:
                                  Clip.none, // To prevent clipping of the badge
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.notifications,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    // Your action here
                                  },
                                ),
                                Positioned(
                                  right:
                                      0, // Position the badge to the right of the icon
                                  top: 0,
                                  left:
                                      25, // Position the badge at the top of the icon
                                  child: Container(
                                    padding: EdgeInsets.all(
                                        2), // Adjust the padding for the badge
                                    decoration: BoxDecoration(
                                      color: Colors.red, // Badge color
                                      shape:
                                          BoxShape.circle, // Make it circular
                                    ),
                                    constraints: BoxConstraints(
                                      minWidth:
                                          15, // Minimum width of the badge
                                      minHeight:
                                          15, // Minimum height of the badge
                                    ),
                                    child: Center(
                                      child: Text(
                                        '0', // Badge number or content
                                        style: TextStyle(
                                          color:
                                              Colors.white, // Badge text color
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
                      // Search Bar
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SearchDestination()),
                            );
                          },
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.filter_list),
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
                      ),

                      // Top Destination
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Top Destination',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TOPDESTINATION(),
                      //Card of Popular Destination
                      Container(
                          height: MediaQuery.of(context).size.height,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Carousel Image
                                CAROUSELIMAGE(),

                                // Popular Place
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Popular Place',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            print("TextButton Pressed");
                                          },
                                          child: Text(
                                            "View All",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Cards
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          // Card1
                                          buildCard(context),
                                          // Card2
                                          buildCard(context),
                                          // Card3
                                          buildCard(context),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'gggggggggg',
                                    ),
                                    Text(
                                      'gggggggggg',
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DETAILPLACE(),
          ),
        );
      },
      child: Card(
        elevation: 2,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.planetware.com/wpimages/2020/07/cambodia-top-places-to-visit-kampot.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0, right: 5.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(40)),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Irence Red VedVet',
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
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
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
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
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            '5.0',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
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
    );
  }
}
