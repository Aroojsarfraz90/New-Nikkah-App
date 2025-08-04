import 'package:flutter/material.dart';
import 'voicevideointropage_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: InterestsPersonalityScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class InterestsPersonalityScreen extends StatefulWidget {
  const InterestsPersonalityScreen({super.key});

  @override
  State<InterestsPersonalityScreen> createState() =>
      _InterestsPersonalityScreenState();
}

class _InterestsPersonalityScreenState
    extends State<InterestsPersonalityScreen> {
  final Color activeColor = const Color(0xFFD6C4AE);
  final Color inactiveColor = Colors.white;
  final Color borderColor = const Color(0xFFD6C4AE);

  // Interest lists
  final List<String> interests = [
    "Reading",
    "Traveling",
    "Cooking",
    "Sports",
    "Art",
    "Music",
    "Nature",
    "Technology",
    "Volunteering",
    "Islamic Studies",
    "Fitness",
    "Photography",
    "Writing",
    "Business",
    "Family Activities",
    "Gym",
  ];

  final List<String> personalityTraits = [
    "Kind",
    "Spiritual",
    "Ambitious",
    "Patient",
    "Creative",
    "Organized",
    "Outgoing",
    "Analytical",
    "Adventurous",
    "Reserved",
    "Humorous",
    "Traditional",
  ];

  List<String> selectedInterests = [];
  List<String> selectedTraits = [];

  Widget buildCheckBox(String text, bool selected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: selected ? activeColor : inactiveColor,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: borderColor),
              ),
            ),
            const SizedBox(width: 8),
            Text(text, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const Center(
                  child: Text(
                    "Interests & Personality",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(height: 4, color: const Color(0xFFD6C4AE)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Tell us about yourself to help find compatible matches.*",
                style: TextStyle(fontSize: 14, color: Colors.brown[300]),
              ),
              const SizedBox(height: 20),

              const Text(
                "Select your interests (choose up to 5)",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),

              // Interests Grid
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: interests.map((interest) {
                  bool isSelected = selectedInterests.contains(interest);
                  return buildCheckBox(interest, isSelected, () {
                    setState(() {
                      if (isSelected) {
                        selectedInterests.remove(interest);
                      } else if (selectedInterests.length < 5) {
                        selectedInterests.add(interest);
                      }
                    });
                  });
                }).toList(),
              ),
              const SizedBox(height: 20),

              const Text(
                "Select your interests (choose up to 5)",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),

              // Personality Traits Grid
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: personalityTraits.map((trait) {
                  bool isSelected = selectedTraits.contains(trait);
                  return buildCheckBox(trait, isSelected, () {
                    setState(() {
                      if (isSelected) {
                        selectedTraits.remove(trait);
                      } else if (selectedTraits.length < 5) {
                        selectedTraits.add(trait);
                      }
                    });
                  });
                }).toList(),
              ),

              const SizedBox(height: 40),

              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD6C4AE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VoiceVideoIntroPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
