// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../topdestination/top_place.dart';

class TOPDESTINATION extends StatefulWidget {
  const TOPDESTINATION({super.key});

  @override
  State<TOPDESTINATION> createState() => _TOPDESTINATIONState();
}

class Item {
  final String name;
  final String imageUrl;
  final String location;

  Item({
    required this.name,
    required this.imageUrl,
    required this.location,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      name: json['name'] ?? 'Unknown Name',
      imageUrl: json['imageUrl'] ??
          "https://www.planetware.com/wpimages/2020/07/cambodia-top-places-to-visit-kampot.jpg",
      location: json['location'] ?? 'Unknown Location',
    );
  }
}

class ApiService {
  final String apiUrl =
      "https://676ec460df5d7dac1ccba6e5.mockapi.io/place/place";

  Future<List<Item>> fetchPlaces() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Item.fromJson(data)).toList();
    } else {
      throw Exception("Failed to load places");
    }
  }
}

class _TOPDESTINATIONState extends State<TOPDESTINATION> {
  late Future<List<Item>> futurePlaces;

  @override
  void initState() {
    super.initState();
    futurePlaces = ApiService().fetchPlaces();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: FutureBuilder<List<Item>>(
        future: futurePlaces,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No places found'));
          } else {
            final items = snapshot.data!;

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: items.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        // Action when the item is clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopPlace(),
                          ),
                        );
                      },
                      child: Container(
                        width: 190,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green,
                          image: DecorationImage(
                            image: NetworkImage(item.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  item.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                child: Text(
                                  item.location,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          }
        },
      ),
    );
  }
}

// class ItemDetailsScreen extends StatelessWidget {
//   final Item item;

//   const ItemDetailsScreen({Key? key, required this.item}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(item.name)),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.network(item.imageUrl, height: 200, fit: BoxFit.cover),
//             SizedBox(height: 20),
//             Text(
//               item.name,
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               item.location,
//               style: TextStyle(fontSize: 18, color: Colors.grey),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
