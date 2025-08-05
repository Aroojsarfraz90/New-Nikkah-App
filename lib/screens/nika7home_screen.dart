 import 'package:flutter/material.dart';

void main() {
  runApp(const Nika7HomeScreen());
}

class Nika7HomeScreen extends StatelessWidget {
  const Nika7HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const List<String> featureTitles = [
    "Ask the Mufti",
    "Family Panel",
    "Mahr Calculator",
    "Firasa Insights",
    "Emotional Journey",
    "AI Companion",
    "Nikah Navigator",
  ];

  static const List<String> featureIcons = [
    "assets/images/ask_the_mufti.png",
    "assets/images/family_panel.png",
    "assets/images/mahr_calculator.png",
    "assets/images/firasa_insights.png",
    "assets/images/emotional_journey.png",
    "assets/images/ai_companion.png",
    "assets/images/nikah_navigator.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ✅ 1️⃣ Profile Section
              const Text(
                "Assalamu Alaikum, Amina",
                style: TextStyle(
                  fontFamily: 'ArticulatCF',
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Begin your journey to a blessed union",
                style: TextStyle(
                  fontFamily: 'ArticulatCF',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Featured Matches",
                style: TextStyle(
                  fontFamily: 'ArticulatCF',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),

              // ✅ Horizontal Cards (Profiles)
              SizedBox(
                height: 375.93,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildProfileCard(
                      name: "Ahmed",
                      age: 28,
                      profession: "Software Engineer",
                      badge: "Practicing",
                      trait: "Family Oriented",
                      imagePath: "assets/images/Ali.png",
                    ),
                    const SizedBox(width: 34),
                    _buildProfileCard(
                      name: "Fatima",
                      age: 28,
                      profession: "Doctor",
                      badge: "Hafiza",
                      trait: "Family Oriented",
                      imagePath: "assets/images/Fatima.png",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(active: true),
                  const SizedBox(width: 8),
                  _buildDot(active: false),
                  const SizedBox(width: 8),
                  _buildDot(active: false),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  width: 294,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFFB39C80),
                    borderRadius: BorderRadius.circular(166),
                  ),
                  child: const Center(
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontFamily: 'ArticulatCF',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              // ✅ 2️⃣ Explore Features
              const SizedBox(height: 30),
              const Text(
                "Explore Features",
                style: TextStyle(
                  fontFamily: 'ArticulatCF',
                  fontSize: 18,
                  color: Color(0xFF525252),
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: List.generate(featureTitles.length, (index) {
                  return _buildFeatureBox(index);
                }),
              ),

              // ✅ 3️⃣ Your Journey
              const SizedBox(height: 30),
              const Text(
                "Your Journey",
                style: TextStyle(
                  fontFamily: 'ArticulatCF',
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFEF8F2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 93, 255, 223),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.check_circle_rounded,
                                color: Colors.black,
                                size: 18,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildJourneyCircle("12", "Profile Views"),
                                _buildJourneyCircle("5", "New Matches"),
                                _buildJourneyCircle("3", "Messages"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Your profile is 85% complete",
                        style: TextStyle(
                          fontFamily: 'ArticulatCF',
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Add more details to increase your matches",
                        style: TextStyle(
                          fontFamily: 'ArticulatCF',
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ✅ 4️⃣ Upgrade Card with navigation
              const SizedBox(height: 30),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 76,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF00BBA7), Color(0xFF00786F)],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 1),
                          blurRadius: 2,
                          spreadRadius: -1,
                        ),
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 1),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Upgrade to Nika7 Gold",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 15.63,
                              color: Color(0xFFFEFCF9),
                              height: 1.5,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "See who likes you & unlock premium features",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 13.67,
                              color: Color(0xFFFEFCF9),
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: SizedBox(
                      width: 89.14,
                      height: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFEFCF9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.white),
                          ),
                          elevation: 0,
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MembershipScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Upgrade",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 13.78,
                            color: Color(0xFF00786F),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 100), // Bottom spacing
            ],
          ),
        ),
      ),

      // ✅ 5️⃣ Bottom Nav Bar
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFD8C7B3),
          borderRadius: BorderRadius.circular(166),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.home, size: 28, color: Colors.black),
            Icon(Icons.favorite, size: 28, color: Colors.black),
            Icon(Icons.chat, size: 28, color: Colors.black),
            Icon(Icons.person, size: 28, color: Colors.black),
          ],
        ),
      ),
    );
  }

  static Widget _buildDot({required bool active}) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: active
            ? const Color(0xFF1C6758)
            : const Color(0xFF1C6758).withOpacity(0.33),
        shape: BoxShape.circle,
      ),
    );
  }

  static Widget _buildProfileCard({
    required String name,
    required int age,
    required String profession,
    required String badge,
    required String trait,
    required String imagePath,
  }) {
    return Container(
      width: 256,
      height: 375.93,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[200],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              width: 256,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                color: Color(0xFFFEFCF9),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text(
                  "92%",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xFF1C6758),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 156,
            left: 12,
            child: Container(
              width: 69,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFFEFCF9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 8),
                  SizedBox(
                    width: 12,
                    height: 12,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFF00C950),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Online',
                    style: TextStyle(fontSize: 12, fontFamily: 'ArticulatCF'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 16,
            child: Text(
              "$name, $age",
              style: const TextStyle(
                fontFamily: 'ArticulatCF',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 16,
            child: Text(
              profession,
              style: const TextStyle(
                fontFamily: 'ArticulatCF',
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 16,
            child: Container(
              width: 73,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFF0FDFA),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  badge,
                  style: const TextStyle(
                    fontFamily: 'ArticulatCF',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 100,
            child: Text(
              trait,
              style: const TextStyle(fontFamily: 'ArticulatCF', fontSize: 12),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Container(
              width: 224,
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFF1C6758),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: Text(
                  "View Profile",
                  style: TextStyle(
                    fontFamily: 'ArticulatCF',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildFeatureBox(int index) {
    return Container(
      width: 121,
      height: 102,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFB2AFAF)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              color: Color(0xFFEFE9E1),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                featureIcons[index],
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            featureTitles[index],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'ArticulatCF',
              fontWeight: FontWeight.w600,
              fontSize: 13.78,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildJourneyCircle(String number, String label) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
            color: Color(0xFFEFE9E1),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(
                fontFamily: 'ArticulatCF',
                fontWeight: FontWeight.w600,
                fontSize: 13.78,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'ArticulatCF',
            fontWeight: FontWeight.w600,
            fontSize: 13.78,
          ),
        ),
      ],
    );
  }
}

class MembershipScreen extends StatelessWidget {
  const MembershipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final accent = const Color(0xFF1F5F3F);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Membership Plans'),
        backgroundColor: accent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Membership Plans', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 6),
            const Text(
              'Choose the plan that best fits your needs and unlock premium features to find your perfect match.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),
            // simplified billing toggle
            Row(
              children: [
                _BillingOption(label: 'Monthly', selected: true),
                const SizedBox(width: 8),
                _BillingOption(label: '3 Months (Save 11%)', selected: false),
                const SizedBox(width: 8),
                _BillingOption(label: 'Yearly (Save 37%)', selected: false),
              ],
            ),
            const SizedBox(height: 16),
            // Plan cards (simplified)
            _SimplePlanCard(
              title: 'Free',
              price: '\$0',
              subtitle: '/forever',
              isCurrent: false,
              badge: null,
            ),
            const SizedBox(height: 12),
            _SimplePlanCard(
              title: 'Silver',
              price: '\$19.99',
              subtitle: '/month',
              isCurrent: true,
              badge: 'Most Popular',
            ),
            const SizedBox(height: 12),
            _SimplePlanCard(
              title: 'Gold',
              price: '\$39.99',
              subtitle: '/month',
              isCurrent: false,
              badge: null,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: accent,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                  // placeholder upgrade action
                },
                child: const Text('Upgrade to Gold', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              ),
            ),
            const SizedBox(height: 6),
            const Text("You'll be charged \$39.99 monthly. Cancel anytime.", style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}

class _BillingOption extends StatelessWidget {
  final String label;
  final bool selected;
  const _BillingOption({required this.label, required this.selected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF1F5F3F) : Colors.transparent,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black87,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _SimplePlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final String? badge;
  final bool isCurrent;
  const _SimplePlanCard({
    required this.title,
    required this.price,
    required this.subtitle,
    this.badge,
    required this.isCurrent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final accent = const Color(0xFF1F5F3F);
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: isCurrent ? accent : Colors.grey.shade300, width: isCurrent ? 2 : 1),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (badge != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(color: accent, borderRadius: BorderRadius.circular(8)),
              child: Text(badge!, style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600)),
            ),
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(price, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(width: 4),
              Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.black54)),
              if (isCurrent)
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text('Current Plan', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
                ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Icon(Icons.check, size: 16, color: Colors.green),
              SizedBox(width: 6),
              Expanded(child: Text('Basic features included')),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: isCurrent ? Colors.grey.shade400 : accent),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: Text(
                isCurrent ? 'Your Current Plan' : 'Select Plan',
                style: TextStyle(
                  color: isCurrent ? Colors.black87 : accent,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
