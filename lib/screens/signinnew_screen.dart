import 'package:flutter/material.dart';
import 'welcomeApp_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInNewScreen(),
    ),
  );
}

class SignInNewScreen extends StatelessWidget {
  const SignInNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Back Arrow
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black87),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 16),

              /// Logo
              Center(
                child: Image.asset(
                  'assets/images/mainLogo.png', // Replace with your logo
                  height: 80,
                ),
              ),
              const SizedBox(height: 24),

              /// Title
              const Center(
                child: Text(
                  "Let’s Get Started",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              /// Subtitle
              const Center(
                child: Text(
                  "Sign up with Social or fill the form to continue.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 24),

              /// Email Field
              _buildTextField(Icons.email_outlined, "Amina123@gmail.com"),
              const SizedBox(height: 16),

              /// Name Field
              _buildTextField(Icons.person_outline, "Amina Ali"),
              const SizedBox(height: 16),

              /// Password Field
              _buildTextField(Icons.lock_outline, "********", obscure: true),
              const SizedBox(height: 8),

              const Text(
                "At least 8 characters, 1 uppercase letter, 1 number, 1 symbol",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 20),

              /// Terms and Privacy
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (val) {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    activeColor: Colors.green,
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                        children: [
                          TextSpan(text: "By Signing up, you agree to the "),
                          TextSpan(
                            text: "Terms of Service",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              /// Social Login Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialButton('assets/images/x.png'),
                  const SizedBox(width: 16),
                  _socialButton('assets/images/facebook.png'),
                  const SizedBox(width: 16),
                  _socialButton('assets/images/apple.png'),
                ],
              ),
              const SizedBox(height: 28),

              /// Create Account Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeAppScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9B7E64), // Brown button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(double.infinity, 55),
                  ),
                  child: const Text(
                    "Create an account",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              /// Sign In Link
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "ALREADY HAVE AN ACCOUNT? ",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomeAppScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Custom TextField
  Widget _buildTextField(
    IconData icon,
    String hintText, {
    bool obscure = false,
  }) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.black54),
        suffixIcon: const Icon(
          Icons.keyboard_arrow_down,
          color: Colors.black54,
        ), // Dropdown icon
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black87),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }

  /// Social Button
  Widget _socialButton(String imagePath) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        shape: BoxShape.circle,
      ),
      child: Image.asset(imagePath, height: 24, width: 24),
    );
  }
}
