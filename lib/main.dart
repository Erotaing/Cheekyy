// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, unused_import

import 'package:flutter/material.dart';

import './natwork_state.dart';
// import './HomeScreen/home_screen.dart';
// import './Auth/signin/login.dart';
// import './Auth/sign up/sign_up.dart';
import 'HomeScreen/home_screen.dart';
import 'DetailPlaceScreen/detail_place.dart';
import 'FavouriteScreen/favourite_place.dart';
import './badge.dart';
import 'TopDestinationScreen/top_destination.dart';
import 'PopularPlaceScreen/pop_place.dart';
import 'SearchScreen/search_screen.dart';
import 'ProfileScreen/account.dart';
import 'HomeScreen/navbar_screen.dart';
import 'ChatScreen/ChatScreen.dart';
import 'LockScreen/lock_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LockScreen(),
    );
  }
}

// class MainSreen extends StatefulWidget {
//   const MainSreen({super.key});

//   @override
//   State<MainSreen> createState() => _MainSreenState();
// }

// class _MainSreenState extends State<MainSreen> {
//   int _currentIndex = 0;

//   final List<Widget> _screens = [
//     HOMESCREEN(),
//     HOME(),
//     ChatScreen(),
//     SearchDestination(),
//     FavoritePlace(),
//     Profile(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.blue[400],
//         type: BottomNavigationBarType.fixed, // Use fixed type for labels
//         selectedItemColor: Colors.red, // Color for selected label and icon
//         unselectedItemColor:
//             Colors.white, // Color for unselected label and icon
//         showSelectedLabels: true, // Show labels for selected items
//         showUnselectedLabels: true, // Show labels for unselected items

//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.chat,
//             ),
//             label: 'Chat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.search,
//             ),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.favorite_outline,
//             ),
//             label: 'Favourite',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.person_outlined,
//             ),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
