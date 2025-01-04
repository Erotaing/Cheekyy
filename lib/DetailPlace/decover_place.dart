// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import '../Screen/hearticon.dart';

class DECOVERPLACE extends StatefulWidget {
  const DECOVERPLACE({super.key});

  @override
  State<DECOVERPLACE> createState() => _DECOVERPLACEState();
}

class _DECOVERPLACEState extends State<DECOVERPLACE> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discover Place',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildPlaceCard(
                  context,
                  imageUrl: 'https://via.placeholder.com/150',
                  title: 'Irence Red VedVet',
                  location: 'South Korea',
                  rating: '5.0',
                ),
                _buildPlaceCard(
                  context,
                  imageUrl: 'https://via.placeholder.com/150',
                  title: 'Irence Red VedVet',
                  location: 'South Korea',
                  rating: '5.0',
                ),
                _buildPlaceCard(
                  context,
                  imageUrl: 'https://via.placeholder.com/150',
                  title: 'Irence Red VedVet',
                  location: 'South Korea',
                  rating: '5.0',
                ),
              ],
            ),
          ),
          Text(
            'lllllllllllll',
          )
        ],
      ),
    );
  }

  Widget _buildPlaceCard(
    BuildContext context, {
    required String imageUrl,
    required String title,
    required String location,
    required String rating,
  }) {
    return Card(
      elevation: 2,
      child: Container(
        height: 300,
        width: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: HeartClickBtn(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue[400],
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        location,
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
                      SizedBox(width: 5),
                      Text(
                        rating,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
