import 'package:flutter/material.dart';
import 'educationcareer_screen.dart';

class ReligiousBackgroundScreen extends StatefulWidget {
  const ReligiousBackgroundScreen({super.key});

  @override
  _ReligiousBackgroundScreenState createState() =>
      _ReligiousBackgroundScreenState();
}

class _ReligiousBackgroundScreenState extends State<ReligiousBackgroundScreen> {
  String? selectedReligiousLevel = "Very practicing";
  String? selectedPrayerLevel = "Five times daily";
  String? selectedMadhab;

  final List<String> religiousOptions = [
    "Very practicing",
    "Moderately Practicing",
    "Somewhat practicing",
    "Not very practising",
    "Cultural connection only",
  ];

  final List<String> prayerOptions = [
    "Five times daily",
    "Most prayers daily",
    "Friday prayers only",
    "Occasionally",
    "Rarely/Never",
  ];

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
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(height: 8),

              // Title
              const Text(
                "Religious Background",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),

              // Subtitle
              const Text(
                "Tell us about your religious practices to help find compatible matches.*",
                style: TextStyle(fontSize: 14, color: Color(0xFFB19777)),
              ),
              const SizedBox(height: 24),

              // How Religious Are You?
              const Text(
                "How Religious Are You?*",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              _buildDropdown(
                value: selectedReligiousLevel,
                items: religiousOptions,
                onChanged: (value) {
                  setState(() {
                    selectedReligiousLevel = value;
                  });
                },
              ),

              const SizedBox(height: 20),

              // Prayer Level
              const Text(
                "Prayer Level?*",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              _buildDropdown(
                value: selectedPrayerLevel,
                items: prayerOptions,
                onChanged: (value) {
                  setState(() {
                    selectedPrayerLevel = value;
                  });
                },
              ),

              const SizedBox(height: 20),

              // Madhab
              const Text(
                "Madhab/School of thoughts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),

              _buildDropdown(
                value: selectedMadhab,
                items: ["Hanafi", "Shafi'i", "Maliki", "Hanbali", "Other"],
                hint: "City, Country*",
                onChanged: (value) {
                  setState(() {
                    selectedMadhab = value;
                  });
                },
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
                        builder: (context) => const EducationCareerScreen(),
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
    String? hint,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F2EC),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFB19777), width: 1),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: Text(
            hint ?? "",
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
          isExpanded: true,
          items: items.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(
                e,
                style: const TextStyle(fontSize: 14, color: Colors.black87),
              ),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
