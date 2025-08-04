import 'package:flutter/material.dart';
import 'userdetailsfilled_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserDetailsScreen(),
    ),
  );
}

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF9F6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back arrow
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Go back to previous screen
                },
                child: const Icon(Icons.arrow_back_ios_new, size: 20),
              ),
              const SizedBox(height: 20),

              // Title
              const Text(
                'Tell Us More About Yourself',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 24),
              const Text('Add Your Full Name*', style: TextStyle(fontSize: 14)),
              const SizedBox(height: 10),

              // First, Middle, Last Name fields
              const CustomTextField(hint: 'First Name*'),
              const SizedBox(height: 12),
              const CustomTextField(hint: 'Middle Name'),
              const SizedBox(height: 12),
              const CustomTextField(hint: 'Last Name*'),

              const SizedBox(height: 24),
              const Text(
                'Do you have any Nick Name?',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 10),
              const CustomTextField(hint: 'Nick Name'),

              const SizedBox(height: 24),
              const Text(
                "What's your gender?*",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 14),

              // Gender selection (visual only)
              Row(
                children: [
                  Expanded(
                    child: GenderButton(label: 'Male', isSelected: true),
                  ),
                  const SizedBox(width: 14),
                  Expanded(child: GenderButton(label: 'Female')),
                ],
              ),

              const Spacer(),

              // Next button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserDetailsFilledScreen(),
                    ),
                  );
                  // TODO: Implement next action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD8C6B4), // Light brown
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Text Field Widget
class CustomTextField extends StatelessWidget {
  final String hint;
  const CustomTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}

// Gender Button Widget
class GenderButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const GenderButton({super.key, required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFF5EEE8) : Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: isSelected ? const Color(0xFFB8926A) : Colors.grey.shade300,
          width: 1.2,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? const Color(0xFFB8926A) : Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
