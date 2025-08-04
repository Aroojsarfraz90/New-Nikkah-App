import 'package:flutter/material.dart';
import 'marriagefamily_screen.dart';

class EducationCareerScreen extends StatefulWidget {
  const EducationCareerScreen({super.key});

  @override
  _EducationCareerScreenState createState() => _EducationCareerScreenState();
}

class _EducationCareerScreenState extends State<EducationCareerScreen> {
  String? selectedEducation;
  String? selectedProfession;
  String? selectedEthnicity;

  final List<String> educationOptions = [
    "High School",
    "Bachelor's",
    "Master's",
    "PhD",
    "Other",
  ];

  final List<String> professionOptions = [
    "Engineer",
    "Doctor",
    "Teacher",
    "Business",
    "Other",
  ];

  final List<String> ethnicityOptions = [
    "Asian",
    "Arab",
    "African",
    "Caucasian",
    "Other",
  ];

  final Map<String, bool> languages = {
    "Arabic": false,
    "Urdu": false,
    "Turkish": false,
    "Spanish": false,
    "English": false,
    "French": false,
    "Farsi": false,
    "Bengali": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Arrow
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(height: 8),

              // Title Center Aligned
              const Center(
                child: Text(
                  "Education & Career",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Subtitle
              const Center(
                child: Text(
                  "Tell us about your educational background\nand professional life.*",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Color(0xFFB19777)),
                ),
              ),
              const SizedBox(height: 24),

              // Education Level
              const Text(
                "Education Level",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              _buildDropdown(
                value: selectedEducation,
                hint: "Select an option",
                items: educationOptions,
                onChanged: (value) {
                  setState(() {
                    selectedEducation = value;
                  });
                },
              ),
              const SizedBox(height: 16),

              // Profession
              const Text(
                "Profession",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              _buildDropdown(
                value: selectedProfession,
                hint: "What do you do for work?",
                items: professionOptions,
                onChanged: (value) {
                  setState(() {
                    selectedProfession = value;
                  });
                },
              ),
              const SizedBox(height: 16),

              // Ethnicity
              const Text(
                "Ethnicity",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              _buildDropdown(
                value: selectedEthnicity,
                hint: "Select an option",
                items: ethnicityOptions,
                onChanged: (value) {
                  setState(() {
                    selectedEthnicity = value;
                  });
                },
              ),
              const SizedBox(height: 16),

              // Languages in Two Columns
              const Text(
                "Languages you know",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: languages.keys
                          .toList()
                          .sublist(0, 4)
                          .map((lang) => _buildLanguageCheckbox(lang))
                          .toList(),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: languages.keys
                          .toList()
                          .sublist(4)
                          .map((lang) => _buildLanguageCheckbox(lang))
                          .toList(),
                    ),
                  ),
                ],
              ),

              const Spacer(),

              // Next Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MarriageFamilyScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB19777),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Next",
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

  Widget _buildDropdown({
    String? value,
    required String hint,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25), // Updated border radius
        border: Border.all(color: Color(0xFFB19777), width: 1),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: Text(hint, style: const TextStyle(color: Colors.grey)),
          icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
          isExpanded: true,
          items: items.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e, style: const TextStyle(color: Colors.black87)),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }

  Widget _buildLanguageCheckbox(String lang) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: languages[lang],
          activeColor: const Color(0xFFB19777),
          onChanged: (val) {
            setState(() {
              languages[lang] = val!;
            });
          },
        ),
        Text(lang, style: const TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}
