import 'package:flutter/material.dart';
import 'interestpersonalitypage_screen.dart';

void main() {
  runApp(const MaterialApp(home: BioWithTextPage()));
}

class BioWithTextPage extends StatelessWidget {
  const BioWithTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF8F4),
      body: SafeArea(
        child: Column(
          children: [
            // Progress bar
            Container(height: 4, color: const Color(0xFFF5ECE1)),

            // Back arrow + heading
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
                        'Tell Us More About Yourself',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 48), // Balancing back arrow
                ],
              ),
            ),

            const SizedBox(height: 12),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Add your Bio',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Bio Box with Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD1C8BF)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: const Text(
                        'Amina, 29. Practicing Muslimah seeking a like minded partner for a blessed journey. I am passionate about my faith, family, and finding joy in the simple things. Whether its a quiet evening in or an adventure outdoors, I value connection and sincerity.\nLooking for a respectful, faith driven individual to share lifes blessings with.',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.auto_fix_high, size: 16),
                        label: const Text(
                          'AI Rephrase',
                          style: TextStyle(fontSize: 12),
                        ),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          side: const BorderSide(color: Color(0xFFD1C8BF)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Use AI to Enhance button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFFD1C8BF)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text(
                    'Use AI to Enhance your Bio',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
            ),

            const Spacer(),

            // Bottom Next Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InterestsPersonalityPage(),
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
                    'Next',
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
