import 'package:flutter/material.dart';
import 'interestspersonality_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: MarriageFamilyScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MarriageFamilyScreen extends StatefulWidget {
  const MarriageFamilyScreen({super.key});

  @override
  State<MarriageFamilyScreen> createState() => _MarriageFamilyScreenState();
}

class _MarriageFamilyScreenState extends State<MarriageFamilyScreen> {
  String maritalStatus = "Never Married";
  String haveChildren = "No";
  String wantChildren = "Yes";
  String relocate = "No";

  final Color activeColor = const Color(0xFFD6C4AE);
  final Color inactiveColor = Colors.white;
  final Color borderColor = const Color(0xFFD6C4AE);

  Widget buildToggleButton(String label, bool isActive, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: isActive ? activeColor : inactiveColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: borderColor),
          ),
          child: Center(
            child: Text(
              label,
              style: const TextStyle(color: Colors.black87, fontSize: 16),
            ),
          ),
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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const Center(
                  child: Text(
                    "Marriage & Family",
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
                "Tell us about your marital status and family plans.*",
                style: TextStyle(fontSize: 14, color: Colors.brown[300]),
              ),
              const SizedBox(height: 20),

              const Text("Marital status", style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              Row(
                children: [
                  buildToggleButton(
                    "Never Married",
                    maritalStatus == "Never Married",
                    () {
                      setState(() => maritalStatus = "Never Married");
                    },
                  ),
                  buildToggleButton(
                    "Divorced",
                    maritalStatus == "Divorced",
                    () {
                      setState(() => maritalStatus = "Divorced");
                    },
                  ),
                  buildToggleButton("Widowed", maritalStatus == "Widowed", () {
                    setState(() => maritalStatus = "Widowed");
                  }),
                ],
              ),
              const SizedBox(height: 20),

              const Text(
                "Do you have children?",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  buildToggleButton("Yes", haveChildren == "Yes", () {
                    setState(() => haveChildren = "Yes");
                  }),
                  buildToggleButton("No", haveChildren == "No", () {
                    setState(() => haveChildren = "No");
                  }),
                ],
              ),
              const SizedBox(height: 20),

              const Text(
                "Do you want children in the future?",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  buildToggleButton("Yes", wantChildren == "Yes", () {
                    setState(() => wantChildren = "Yes");
                  }),
                  buildToggleButton("No", wantChildren == "No", () {
                    setState(() => wantChildren = "No");
                  }),
                ],
              ),
              const SizedBox(height: 20),

              const Text(
                "Are you willing to relocate for marriage?",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  buildToggleButton("Yes", relocate == "Yes", () {
                    setState(() => relocate = "Yes");
                  }),
                  buildToggleButton("No", relocate == "No", () {
                    setState(() => relocate = "No");
                  }),
                ],
              ),
              const SizedBox(height: 40),

              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD6C4AE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const InterestsPersonalityScreen(),
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
            ],
          ),
        ),
      ),
    );
  }
}
