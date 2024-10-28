import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _buildPage(
            title: 'Explore New Destinations',
            description: 'Discover amazing places to visit around the world.',
            image: 'assets/splashscreen.png',
          ),
          // _buildPage(
          //   title: 'Plan Your Trip',
          //   description: 'Easily plan your itinerary and manage bookings.',
          //   image: 'assets/splashscreen.png',
          // ),
          // _buildPage(
          //   title: 'Stay Connected',
          //   description: 'Get real-time updates and travel tips.',
          //   image: 'assets/splashscreen.png',
          // ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the main part of the app
            Navigator.pushReplacementNamed(context, '/home');
          },
          child: const Text('Get Started'),
        ),
      ),
    );
  }

  Widget _buildPage({
    required String title,
    required String description,
    required String image,
  }) {
    return Stack(
      children: [
        // Full-screen image
        Image.asset(
          image,
          fit: BoxFit.cover, // Makes the image cover the entire screen
          width: double.infinity,
          height: double.infinity,
        ),
        // Centered text at the top
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50), // Space from the top
            Text(
              title,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
