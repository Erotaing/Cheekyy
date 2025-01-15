// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

import '../DetailPlaceScreen/detail_place.dart';
import './hearticon.dart';
import '../PopularPlaceScreen/pop_place.dart';

class PopularPlaceHome extends StatefulWidget {
  const PopularPlaceHome({super.key}); // List of place names
  @override
  State<PopularPlaceHome> createState() => _PopularPlaceHomeState();
}

class _PopularPlaceHomeState extends State<PopularPlaceHome> {
  static const imageUrl = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk7K0Uj6Zu8hQ9xvYEh_mksep6fwvliQc5FQ&s',
    'https://www.siemreap.net/wp-content/uploads/2018/04/bayon-temple-696x435.jpg.webp',
    'https://whc.unesco.org/uploads/thumbs/news_2162-1200-630-20200910105401.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwWUZ300k5WQPZwu53XFU9LcITpT2z71g0Qg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS82gmZ6aj10MMDV9i2_gRL_20E2r-ASBVkyw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOGRl3L4OXhmDvKoaHAnIh6V1lLnNk7RSklQ&s'
  ];
  static const place = [
    'Tuol Sleng Museum',
    'Bayon Temple',
    'Preah Vihear Temple',
    'Koh Rong',
    'Krong Kep',
    'Wat Phnom'
  ];
  static const province = [
    'Phnom Penh',
    'Siem Reap',
    'Preah Vihear',
    'Sihanoukville',
    'Kep',
    'Phnom Penh'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PopularPlace()));
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
          scrollDirection: Axis.vertical,
          child: Wrap(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCard(context, imageUrl[0], place[0], province[0]),
                  buildCard(context, imageUrl[1], place[1], province[1]),
                  buildCard(context, imageUrl[2], place[2], province[2]),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCard(context, imageUrl[3], place[3], province[3]),
                  buildCard(context, imageUrl[4], place[4], province[4]),
                  buildCard(context, imageUrl[5], place[5], province[5]),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCard(BuildContext context, imageUrl, place, province) {
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
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
        child: Container(
          height: 300,
          width: 180,
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
                      image: NetworkImage(imageUrl),
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
                          borderRadius: BorderRadius.circular(40),
                        ),
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
                      place,
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
                        Text(
                          province,
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
