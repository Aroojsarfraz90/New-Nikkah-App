import 'package:flutter/material.dart';
import 'userdetails_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileSetupScreen(),
    ),
  );
}

class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF9F6), // light background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: const Text(
                  'Welcome to Nikah Plus',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: const Text(
                  "Let's create your profile to find your perfect match. this will take about 5 - 7 minutes.",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'I am creating an account',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              const SizedBox(height: 16),

              // Option 1: For Myself
              AccountOptionTile(
                icon: Icons.person,
                title: 'For Myself',
                subtitle: 'I am looking for a spouse',
                isSelected: true,
              ),
              const SizedBox(height: 12),

              // Option 2: As a Wali/Guardian
              AccountOptionTile(
                icon: Icons.people_outline,
                title: 'As a Wali/Guardian',
                subtitle: "What's your gender?*",
              ),
              const SizedBox(height: 12),

              // Option 3: As a Mother
              AccountOptionTile(
                icon: Icons.lock_outline,
                title: 'As a Mother',
                subtitle: "What's your gender?*",
              ),

              const SizedBox(height: 30),
              const Text(
                'Where do you live?',
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              const SizedBox(height: 10),

              // City Dropdown
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'City, Country*',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey),
                  ],
                ),
              ),

              const Spacer(),

              // Next Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserDetailsScreen(),
                      ),
                    );
                    // TODO: Add navigation or logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB8926A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Reusable custom tile widget
class AccountOptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool isSelected;

  const AccountOptionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFF5EEE8) : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? const Color(0xFFB8926A) : Colors.grey.shade300,
          width: 1.2,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.brown.shade100,
            child: Icon(icon, color: Colors.brown),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? const Color(0xFFB8926A) : Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: Colors.black45),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
