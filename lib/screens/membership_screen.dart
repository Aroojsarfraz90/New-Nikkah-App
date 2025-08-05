import 'package:flutter/material.dart';

void main() {
  runApp(const MembershipApp());
}

class MembershipApp extends StatelessWidget {
  const MembershipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Membership Plans',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1F5F3F), // deep green accent
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(fontSize: 14),
        ),
      ),
      home: const MembershipScreen(),
    );
  }
}

class MembershipScreen extends StatefulWidget {
  const MembershipScreen({super.key});

  @override
  State<MembershipScreen> createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  String _billingPeriod = 'Monthly'; // can be Monthly, 3 Months, Yearly
  String _currentPlan = 'Silver'; // Free, Silver, Gold

  @override
  Widget build(BuildContext context) {
    final accent = Theme.of(context).colorScheme.primary;
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6F2),
      bottomNavigationBar: const FooterNav(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Membership Plans',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 4),
              Text(
                'Choose the plan that best fits your needs and unlock premium features to find your perfect match.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              BillingToggle(
                selected: _billingPeriod,
                onChanged: (v) {
                  setState(() {
                    _billingPeriod = v;
                  });
                },
              ),
              const SizedBox(height: 16),
              PlanCard(
                title: 'Free',
                price: '\$0',
                subtitle: '/forever',
                features: const [
                  FeatureEntry('Create a profile', true),
                  FeatureEntry('Browse profiles', true),
                  FeatureEntry('5 likes per day', true),
                  FeatureEntry('Basic matching algorithm', true),
                  FeatureEntry('Chat with matches (limited)', false),
                  FeatureEntry('Advanced filters', false),
                  FeatureEntry('Profile boosts', false),
                ],
                isCurrent: _currentPlan == 'Free',
                onPressed: () {
                  setState(() {
                    _currentPlan = 'Free';
                  });
                },
              ),
              const SizedBox(height: 12),
              PlanCard(
                title: 'Silver',
                price: '\$19.99',
                subtitle: '/month',
                badge: 'Most Popular',
                features: const [
                  FeatureEntry('All Free features', true),
                  FeatureEntry('Unlimited likes', true),
                  FeatureEntry('See who likes you', true),
                  FeatureEntry('Advanced filters', true),
                  FeatureEntry('Profile boosts', true),
                  FeatureEntry('Basic face insights', true),
                  FeatureEntry('AI matching', true),
                  FeatureEntry('Access to full profiles', false),
                ],
                isCurrent: _currentPlan == 'Silver',
                onPressed: () {
                  setState(() {
                    _currentPlan = 'Silver';
                  });
                },
              ),
              const SizedBox(height: 12),
              PlanCard(
                title: 'Gold',
                price: '\$39.99',
                subtitle: '/month',
                features: const [
                  FeatureEntry('All Silver features', true),
                  FeatureEntry('Priority in search results', true),
                  FeatureEntry('Full face personality analysis', true),
                  FeatureEntry('Premium badge on profile', true),
                  FeatureEntry('Access to all profiles', true),
                ],
                isCurrent: _currentPlan == 'Gold',
                onPressed: () {
                  setState(() {
                    _currentPlan = 'Gold';
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Feature Comparison',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              FeatureComparisonTable(currentPlan: _currentPlan),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: accent,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // upgrade action
                  },
                  child: const Text(
                    'Upgrade to Gold',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "You'll be charged \$39.99 monthly. Cancel anytime.",
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              const SizedBox(height: 80), // spacing for footer
            ],
          ),
        ),
      ),
    );
  }
}

class BillingToggle extends StatelessWidget {
  final String selected;
  final void Function(String) onChanged;
  const BillingToggle({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final options = ['Monthly', '3 Months (Save 11%)', 'Yearly (Save 37%)'];
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: options.map((o) {
          final isSelected = selected == o;
          return Expanded(
            child: GestureDetector(
              onTap: () => onChanged(o),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 8,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Center(
                  child: Text(
                    o,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.w500,
                      color: isSelected ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class FeatureEntry {
  final String name;
  final bool available;
  const FeatureEntry(this.name, this.available);
}

class PlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final String? badge;
  final List<FeatureEntry> features;
  final bool isCurrent;
  final VoidCallback onPressed;

  const PlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.subtitle,
    this.badge,
    required this.features,
    this.isCurrent = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final accent = Theme.of(context).colorScheme.primary;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: isCurrent ? accent : Colors.grey.shade200,
          width: isCurrent ? 2 : 1,
        ),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 2)),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (badge != null)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: accent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  badge!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),
              if (isCurrent)
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Your Current Plan',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Column(
            children: features
                .map(
                  (f) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Row(
                      children: [
                        Icon(
                          f.available ? Icons.check_circle : Icons.cancel,
                          size: 16,
                          color: f.available ? accent : Colors.grey.shade400,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            f.name,
                            style: TextStyle(
                              fontSize: 13,
                              color: f.available
                                  ? Colors.black87
                                  : Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: isCurrent ? Colors.grey.shade300 : accent,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: isCurrent ? 0 : 3,
              ),
              child: Text(
                isCurrent ? 'Current Plan' : 'Select Plan',
                style: TextStyle(
                  color: isCurrent ? Colors.black87 : Colors.white,
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

class FeatureComparisonTable extends StatelessWidget {
  final String currentPlan;
  const FeatureComparisonTable({super.key, required this.currentPlan});

  @override
  Widget build(BuildContext context) {
    final headerStyle = const TextStyle(fontWeight: FontWeight.w600);
    final cellPadding = const EdgeInsets.symmetric(vertical: 8, horizontal: 6);
    Widget check(bool available) => Icon(
      available ? Icons.check : Icons.close,
      size: 16,
      color: available ? Colors.green : Colors.grey,
    );

    // simplified comparison rows
    final rows = [
      {'feature': 'Profile Creation', 'free': '✓', 'silver': '✓', 'gold': '✓'},
      {
        'feature': 'Daily Likes',
        'free': 'Limited',
        'silver': 'Unlimited',
        'gold': 'Unlimited',
      },
      {'feature': 'See Who Likes You', 'free': '✗', 'silver': '✓', 'gold': '✓'},
      {'feature': 'Advanced Filters', 'free': '✗', 'silver': '✓', 'gold': '✓'},
      {
        'feature': 'Profile Boosts',
        'free': '✗',
        'silver': '1/month',
        'gold': '4/month',
      },
      {
        'feature': 'Face Insights',
        'free': 'Basic',
        'silver': 'Standard',
        'gold': 'Advanced',
      },
      {'feature': 'AI Matching', 'free': '✗', 'silver': '✓', 'gold': '✓'},
      {
        'feature': 'Full Profile Access',
        'free': '✗',
        'silver': '✗',
        'gold': '✓',
      },
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          // header row
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: Row(
              children: const [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Feature',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Free',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Silver',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Gold',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 0),
          // data rows
          ...rows.map((r) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      r['feature']!,
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                  Expanded(child: Center(child: _renderCellValue(r['free']!))),
                  Expanded(
                    child: Center(child: _renderCellValue(r['silver']!)),
                  ),
                  Expanded(child: Center(child: _renderCellValue(r['gold']!))),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _renderCellValue(String v) {
    if (v == '✓') {
      return const Icon(Icons.check, size: 16, color: Colors.green);
    } else if (v == '✗') {
      return const Icon(Icons.close, size: 16, color: Colors.grey);
    } else {
      return Text(v, style: const TextStyle(fontSize: 12));
    }
  }
}

class FooterNav extends StatelessWidget {
  const FooterNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _NavItem(icon: Icons.home, label: 'Home', active: true),
          _NavItem(icon: Icons.search, label: 'Search'),
          _NavItem(icon: Icons.chat_bubble, label: 'Messages'),
          _NavItem(icon: Icons.person, label: 'Profile'),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;
  const _NavItem({
    required this.icon,
    required this.label,
    this.active = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final color = active
        ? Theme.of(context).colorScheme.primary
        : Colors.grey.shade600;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 24, color: color),
        const SizedBox(height: 2),
        Text(label, style: TextStyle(fontSize: 10, color: color)),
      ],
    );
  }
}
