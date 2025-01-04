// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../Screen/navbar_screen.dart';
import './detail_carousel_image.dart';
import './decover_place.dart';

class DETAILPLACE extends StatelessWidget {
  const DETAILPLACE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel Section
            Container(
              height: 350,
              width: double.infinity,
              child: DetailCarouselImage(),
            ),

            // Details Section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name and Location Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The Great Wall of China',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'China',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: List.generate(
                                  5,
                                  (index) => Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      )),
                            ),
                            Text(
                              '5.0',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    // Overview Section
                    Text(
                      'Overview',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Divider(color: Colors.black),
                    SizedBox(height: 10),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),

                    SizedBox(height: 20),

                    // Information Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '5 Days\n Duration',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 35,
                          color: Colors.black,
                        ),
                        Text(
                          '500 Km\n Distance',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 35,
                          color: Colors.black,
                        ),
                        Text(
                          '17 C\n Cloudy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Buttons
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[400],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Discover Place Section
                    DECOVERPLACE(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BUTTOMBAR(),
    );
  }
}
