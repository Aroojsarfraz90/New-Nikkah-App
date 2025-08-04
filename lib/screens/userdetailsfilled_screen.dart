import 'package:flutter/material.dart';
import 'birthdate_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserDetailsFilledScreen(),
    ),
  );
}

class UserDetailsFilledScreen extends StatefulWidget {
  const UserDetailsFilledScreen({super.key});

  @override
  State<UserDetailsFilledScreen> createState() =>
      _UserDetailsFilledScreenState();
}

class _UserDetailsFilledScreenState extends State<UserDetailsFilledScreen> {
  final List<String> nameFields = ['Amina', 'Muhammad', 'Ali'];
  String nickName = 'Mena';
  String selectedGender = 'Female'; // Default selected gender

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
              // Back Arrow
              GestureDetector(
                onTap: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: const Icon(Icons.arrow_back_ios_new, size: 20),
              ),
              const SizedBox(height: 20),

              const Text(
                'Tell Us More About Yourself',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 24),
              const Text('Add Your Full Name*', style: TextStyle(fontSize: 14)),
              const SizedBox(height: 10),

              // Full Name Fields
              for (var name in nameFields)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: CustomTextField(
                    value: name,
                    showCheck: true,
                    hint: 'Full Name',
                  ),
                ),

              const SizedBox(height: 8),
              const Text(
                'Do you have any Nick Name?',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 10),

              CustomTextField(
                value: nickName,
                hint: 'Nick Name',
                showCheck: true,
              ),

              const SizedBox(height: 24),
              const Text(
                "What's your gender?*",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 14),

              // Gender Toggle Buttons
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 'Male';
                        });
                      },
                      child: GenderButton(
                        label: 'Male',
                        isSelected: selectedGender == 'Male',
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 'Female';
                        });
                      },
                      child: GenderButton(
                        label: 'Female',
                        isSelected: selectedGender == 'Female',
                      ),
                    ),
                  ),
                ],
              ),

              const Spacer(),

              ElevatedButton(
                onPressed: () {
                  // You can handle form submission here
                  debugPrint('Full Names: $nameFields');
                  debugPrint('Nick Name: $nickName');
                  debugPrint('Selected Gender: $selectedGender');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BirthdateScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB8926A),
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

// Custom TextField with optional check icon
class CustomTextField extends StatelessWidget {
  final String hint;
  final String value;
  final bool showCheck;

  const CustomTextField({
    super.key,
    required this.hint,
    this.value = '',
    this.showCheck = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true, // Just for display purposes
      controller: TextEditingController(text: value),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
        suffixIcon: showCheck
            ? const Icon(Icons.check, color: Color(0xFFB8926A), size: 20)
            : null,
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

// Gender button widget
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
