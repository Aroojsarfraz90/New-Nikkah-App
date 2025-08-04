import 'package:flutter/material.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const NikkahPlus3App());
}

class NikkahPlus3App extends StatelessWidget {
  const NikkahPlus3App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background pattern image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/background.png', // put your pattern image here
              fit: BoxFit.cover,
            ),
          ),

          // Centered logo
          Center(
            child: Image.asset(
              'assets/images/getLogo.png', // your logo image
              width: 120,
              height: 120,
            ),
          ),

          // Get Started button at bottom center
          Positioned(
            bottom: 60,
            left: 40,
            right: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFFB49A75), // Light brown
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFB49A75), // Light brown
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Color(0xFFB49A75),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
