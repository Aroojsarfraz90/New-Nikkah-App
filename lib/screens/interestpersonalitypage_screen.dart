import 'package:flutter/material.dart';
import 'nika7home_screen.dart';

void main() {
  runApp(const MaterialApp(home: InterestsPersonalityPage()));
}

class InterestsPersonalityPage extends StatefulWidget {
  const InterestsPersonalityPage({super.key});

  @override
  State<InterestsPersonalityPage> createState() =>
      _InterestsPersonalityPageState();
}

class _InterestsPersonalityPageState extends State<InterestsPersonalityPage> {
  double minAge = 29;
  double maxAge = 36;

  final List<String> ethnicities = [
    "Arab",
    "African",
    "Turkish",
    "European",
    "Any",
    "South Asian",
    "Southeast Asian",
    "Persian/Iranian",
    "North American",
  ];

  Map<String, bool> selectedEthnicities = {};

  String selectedLocation = "Anywhere in the world";
  String selectedEducation = "No preference";

  @override
  void initState() {
    super.initState();
    for (var e in ethnicities) {
      selectedEthnicities[e] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF8F4),
      body: SafeArea(
        child: Column(
          children: [
            Container(height: 4, color: const Color(0xFFF5ECE1)),

            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Interests & Personality',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Tell us What you’re looking for in a potential spouse.*",
                      style: TextStyle(fontSize: 14, color: Color(0xFFC1A98B)),
                    ),
                    const SizedBox(height: 20),

                    const Text(
                      "Age range",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${minAge.round()} years"),
                        Text("${maxAge.round()} years"),
                      ],
                    ),

                    // Range sliders
                    Slider(
                      value: minAge,
                      min: 18,
                      max: 50,
                      activeColor: Color(0xFFD0B89F),
                      onChanged: (value) {
                        setState(() {
                          minAge = value;
                          if (minAge > maxAge) maxAge = minAge;
                        });
                      },
                    ),
                    Slider(
                      value: maxAge,
                      min: 18,
                      max: 50,
                      activeColor: Color(0xFFD0B89F),
                      onChanged: (value) {
                        setState(() {
                          maxAge = value;
                          if (maxAge < minAge) minAge = maxAge;
                        });
                      },
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      "Ethnicity Preferences",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),

                    Wrap(
                      spacing: 30,
                      runSpacing: 4,
                      children: ethnicities.map((ethnicity) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width / 2.7,
                          child: CheckboxListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            title: Text(
                              ethnicity,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            value: selectedEthnicities[ethnicity],
                            activeColor: Color(0xFFD0B89F),
                            onChanged: (val) {
                              setState(() {
                                selectedEthnicities[ethnicity] = val!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        );
                      }).toList(),
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      "Location Preference",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFD1C8BF)),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: selectedLocation,
                        underline: const SizedBox(),
                        items:
                            [
                              "Anywhere in the world",
                              "Same country",
                              "Same city",
                            ].map((val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            }).toList(),
                        onChanged: (val) {
                          setState(() {
                            selectedLocation = val!;
                          });
                        },
                      ),
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      "Minimum Education Level",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFD1C8BF)),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: selectedEducation,
                        underline: const SizedBox(),
                        items:
                            [
                              "No preference",
                              "High School",
                              "College",
                              "University",
                              "Postgraduate",
                            ].map((val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            }).toList(),
                        onChanged: (val) {
                          setState(() {
                            selectedEducation = val!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),

            // Find Matches button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Nika7HomeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFDCCDBC),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Find Matches',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
