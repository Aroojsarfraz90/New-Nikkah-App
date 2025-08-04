import 'package:flutter/material.dart';
import 'signupnew_screen.dart';

class SignaccInScreen extends StatelessWidget {
  const SignaccInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F1), // Background from image
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Arrow
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 10),

              // Logogo
              Center(
                child: Image.asset(
                  'assets/images/mainLogo.png', // Replace with actual logo
                  height: 60,
                ),
              ),
              const SizedBox(height: 20),

              // Welcome Text
              const Center(
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Email Input
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: const Icon(Icons.email_outlined),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
              const SizedBox(height: 16),

              // Password Input
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock_outline),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
              const SizedBox(height: 12),

              // Remember Me Checkbox
              Row(
                children: [
                  Checkbox(value: false, onChanged: (val) {}),
                  const Text(
                    "Remember Me",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Or Sign in with Socials text
              const Center(
                child: Text(
                  "Or Sign In Using Your Socials",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 16),

              // Social Media Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialButton(Icons.close, Colors.black), // X
                  const SizedBox(width: 16),
                  socialButton(Icons.facebook, Colors.blue), // Facebook
                  const SizedBox(width: 16),
                  socialButton(Icons.apple, Colors.black), // Apple
                ],
              ),
              const SizedBox(height: 30),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpNewScreen(),
                      ),
                    );
                    // Navigate to next page
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB19777), // Brown color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Already have an account
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpNewScreen(),
                      ),
                    ); // Go back to Sign In
                    // Navigate to Sign Up page
                  },
                  child: const Text.rich(
                    TextSpan(
                      text: "ALREADY HAVE AN ACCOUNT? ",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                      children: [
                        TextSpan(
                          text: "SIGN IN",
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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

  Widget socialButton(IconData icon, Color color) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.grey[200],
      child: Icon(icon, color: color),
    );
  }
}
