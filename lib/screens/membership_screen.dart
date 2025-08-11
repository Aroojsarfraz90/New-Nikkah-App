// import 'package:flutter/material.dart';

// void main() => runApp(const MembershipScreen());

// class MembershipScreen extends StatelessWidget {
//   const MembershipScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Widget roundedButton(
//       String text, {
//       Color bg = Colors.white,
//       Color textColor = Colors.black,
//     }) {
//       return Container(
//         decoration: BoxDecoration(
//           color: bg,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
//         child: Text(
//           text,
//           style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
//         ),
//       );
//     }

//     Widget outlinedButton(String text) {
//       return Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(color: const Color(0xFFB2AFAF)),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
//         child: Text(text, style: const TextStyle(color: Colors.black)),
//       );
//     }

//     Widget tag(String text) {
//       return Container(
//         decoration: BoxDecoration(
//           color: const Color(0xA11C6758),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       );
//     }

//     Widget featureItem(String text) {
//       return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 4),
//         child: Row(
//           children: [
//             const Icon(Icons.check_circle, size: 18, color: Color(0xFF987C59)),
//             const SizedBox(width: 8),
//             Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
//           ],
//         ),
//       );
//     }

//     Widget planCard({
//       required String title,
//       required String subtitle,
//       required String price,
//       required String period,
//       required String buttonText,
//       required List<String> features,
//       required Color bgButton,
//       bool mostPopular = false,
//     }) {
//       return Container(
//         width: 351,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.black12,
//               offset: Offset(0, 1),
//               blurRadius: 2,
//             ),
//             BoxShadow(
//               color: Colors.black12,
//               offset: Offset(0, 1),
//               blurRadius: 3,
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             if (mostPopular)
//               Container(
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   color: Color(0xFF1C6758),
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(12),
//                     topRight: Radius.circular(12),
//                   ),
//                 ),
//                 padding: const EdgeInsets.all(8),
//                 child: const Text(
//                   "MOST POPULAR",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     subtitle,
//                     style: const TextStyle(
//                       fontSize: 14,
//                       color: Color(0xFF6A7282),
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Row(
//                     children: [
//                       Text(
//                         price,
//                         style: const TextStyle(
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 4),
//                       Text(
//                         period,
//                         style: const TextStyle(
//                           fontSize: 14,
//                           color: Color(0xFF6A7282),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 8),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: bgButton,
//                       borderRadius: BorderRadius.circular(166),
//                     ),
//                     padding: const EdgeInsets.symmetric(vertical: 8),
//                     alignment: Alignment.center,
//                     child: Text(
//                       buttonText,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: features.map((f) => featureItem(f)).toList(),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
//     }

//     TableRow tableRowHeader(List<String> cells) {
//       return TableRow(
//         children: cells
//             .map(
//               (c) => Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   c,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//             )
//             .toList(),
//       );
//     }

//     TableRow tableRow(List<String> cells) {
//       return TableRow(
//         children: cells
//             .map(
//               (c) => Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(c, textAlign: TextAlign.center),
//               ),
//             )
//             .toList(),
//       );
//     }

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: const Color(0xFFF9F9F9),
//         body: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 12),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 65),
//               const Text(
//                 "Membership Plans",
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               const Text(
//                 "Upgrade Your Journey to Love",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 4),
//               const Text(
//                 "Choose the plan that best fits your needs and unlock premium features to find your perfect match.",
//                 style: TextStyle(fontSize: 14),
//               ),
//               const SizedBox(height: 12),
//               const Text(
//                 "Billing Period",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               Row(
//                 children: [
//                   roundedButton(
//                     "Monthly",
//                     bg: const Color(0xFF00786F),
//                     textColor: Colors.white,
//                   ),
//                   const SizedBox(width: 8),
//                   outlinedButton("3 Months"),
//                   const SizedBox(width: 4),
//                   tag("Save 17%"),
//                   const SizedBox(width: 8),
//                   outlinedButton("Yearly"),
//                   const SizedBox(width: 4),
//                   tag("Save 37%"),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               planCard(
//                 title: "Free",
//                 subtitle: "Basic features to get started",
//                 price: "\$0",
//                 period: "/forever",
//                 buttonText: "Select Plan",
//                 features: [
//                   "Create a profile",
//                   "Chat with matches (limited)",
//                   "Browse profiles (limited)",
//                   "See who likes you",
//                   "5 likes per day",
//                   "Advanced filters",
//                 ],
//                 bgButton: const Color(0xFFB39C80),
//               ),
//               const SizedBox(height: 20),
//               planCard(
//                 title: "Silver",
//                 subtitle: "Enhanced features for serious seekers",
//                 price: "\$19.99",
//                 period: "/month",
//                 buttonText: "Your Current Plan",
//                 features: [
//                   "All free features",
//                   "Access to all profile photos",
//                   "Priority in search results",
//                   "Advanced AI matching",
//                   "Premium badge on profile",
//                   "Full Firasa personality analysis",
//                   "Priority customer support",
//                 ],
//                 bgButton: const Color(0xFFDFD5C9),
//                 mostPopular: true,
//               ),
//               const SizedBox(height: 20),
//               planCard(
//                 title: "Gold",
//                 subtitle: "All Silver features + more",
//                 price: "\$39.99",
//                 period: "/month",
//                 buttonText: "Upgrade to Gold",
//                 features: [
//                   "All Silver features",
//                   "Access to profile boosts",
//                   "Profile badge",
//                   "Unlimited messaging",
//                 ],
//                 bgButton: const Color(0xFFB39C80),
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 "Feature Comparison",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//               ),
//               const SizedBox(height: 8),
//               Table(
//                 border: TableBorder.symmetric(
//                   inside: const BorderSide(color: Colors.black12),
//                 ),
//                 columnWidths: const {
//                   0: FlexColumnWidth(2),
//                   1: FlexColumnWidth(),
//                   2: FlexColumnWidth(),
//                   3: FlexColumnWidth(),
//                 },
//                 children: [
//                   tableRowHeader(["Feature", "Free", "Silver", "Gold"]),
//                   tableRow(["Profile Creation", "✓", "✓", "✓"]),
//                   tableRow(["Daily Likes", "5", "Unlimited", "Unlimited"]),
//                   tableRow(["See Who Likes You", "✗", "✓", "✓"]),
//                   tableRow(["Advanced Filters", "✗", "✓", "✓"]),
//                   tableRow(["Profile Boosts", "✗", "1/month", "4/month"]),
//                   tableRow(["Firasa Insights", "✗", "Basic", "Full Analysis"]),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF1C6758),
//                   borderRadius: BorderRadius.circular(100),
//                 ),
//                 padding: const EdgeInsets.symmetric(vertical: 14),
//                 child: const Text(
//                   "Upgrade to Gold",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               const Text(
//                 "You'll be charged \$39.99 monthly. Cancel anytime.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 14),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [
//                   Icon(Icons.home, size: 28, color: Colors.black),
//                   Icon(Icons.search, size: 28, color: Colors.black),
//                   Icon(Icons.favorite_border, size: 28, color: Colors.black),
//                   Icon(Icons.person, size: 28, color: Colors.black),
//                 ],
//               ),
//               const SizedBox(height: 30),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:nikkah_plus3/screens/discovermatch_screen.dart';

void main() => runApp(const MembershipScreen());

class MembershipScreen extends StatelessWidget {
  const MembershipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget monthlyButton() {
      return Container(
        decoration: BoxDecoration(
          color: const Color(0xFF00786F),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        child: const Text(
          "Monthly",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget customPeriodButton({
      required String mainText,
      required String badgeText,
    }) {
      return Container(
        width: mainText == "3 Months" ? 147 : 130,
        height: 36,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFB2AFAF)),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                mainText,
                style: const TextStyle(
                  fontFamily: "ArticulatCF",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF4A5565),
                ),
              ),
            ),
            const Spacer(),
            Container(
              width: mainText == "3 Months" ? 67.05 : 69.6,
              height: 18.98,
              decoration: BoxDecoration(
                color: const Color(0x1A1C6758),
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 5),
              child: Text(
                badgeText,
                style: TextStyle(
                  fontFamily: mainText == "3 Months"
                      ? "Fredoka"
                      : "ArticulatCFExtraBold",
                  fontSize: 12,
                  fontWeight: mainText == "3 Months"
                      ? FontWeight.w400
                      : FontWeight.w800,
                  color: const Color(0xFFFEFCF9),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget featureItem(String text) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, size: 18, color: Color(0xFF987C59)),
          const SizedBox(width: 8),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
        ],
      );
    }

    Widget planCard({
      required String title,
      required String subtitle,
      required String price,
      required String period,
      required String buttonText,
      required List<String> features,
      required Color bgButton,
      bool mostPopular = false,
    }) {
      return Container(
        width: 351,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 1),
              blurRadius: 2,
            ),
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 1),
              blurRadius: 3,
            ),
          ],
        ),
        child: Column(
          children: [
            if (mostPopular)
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 1, 167, 76),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                padding: const EdgeInsets.all(8),
                child: const Text(
                  "MOST POPULAR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6A7282),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        period,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 106, 119, 130),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: bgButton,
                      borderRadius: BorderRadius.circular(166),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    alignment: Alignment.center,
                    child: Text(
                      buttonText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 4,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 4,
                    children: features.map((f) => featureItem(f)).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF9F9F9),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 65),
              const Text(
                "Membership Plans",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Upgrade Your Journey to Love",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "Choose the plan that best fits your needs and unlock premium features to find your perfect match.",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 12),
              const Text(
                "Billing Period",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  monthlyButton(),
                  const SizedBox(width: 8),
                  customPeriodButton(
                    mainText: "3 Months",
                    badgeText: "Save 17%",
                  ),
                  const SizedBox(width: 8),
                  customPeriodButton(mainText: "Yearly", badgeText: "Save 37%"),
                ],
              ),
              const SizedBox(height: 20),
              planCard(
                title: "Free",
                subtitle: "Basic features to get started",
                price: "\$0",
                period: "/forever",
                buttonText: "Select Plan",
                features: [
                  "Create a profile",
                  "Chat with matches (limited)",
                  "Browse profiles (limited)",
                  "See who likes you",
                  "5 likes per day",
                  "Advanced filters",
                ],
                bgButton: const Color(0xFFB39C80),
              ),
              const SizedBox(height: 20),
              planCard(
                title: "Silver",
                subtitle: "Enhanced features for serious seekers",
                price: "\$19.99",
                period: "/month",
                buttonText: "Your Current Plan",
                features: [
                  "All free features",
                  "Access to all profile photos",
                  "Priority in search results",
                  "Advanced AI matching",
                  "Premium badge on profile",
                  "Full Firasa personality analysis",
                  "Priority customer support",
                ],
                bgButton: const Color(0xFFDFD5C9),
                mostPopular: true,
              ),
              const SizedBox(height: 20),
              planCard(
                title: "Gold",
                subtitle: "All Silver features + more",
                price: "\$39.99",
                period: "/month",
                buttonText: "Upgrade to Gold",
                features: [
                  "All Silver features",
                  "Access to profile boosts",
                  "Profile badge",
                  "Unlimited messaging",
                ],
                bgButton: const Color(0xFFB39C80),
              ),
              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1C6758),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DiscoverMatchApp(),
                      ),
                    );
                  },
                  child: const Text(
                    "Upgrade to Gold",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              // const SizedBox(height: 20),
              // Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: const Color(0xFF1C6758),
              //     borderRadius: BorderRadius.circular(100),
              //   ),
              //   padding: const EdgeInsets.symmetric(vertical: 14),
              //   child: const Text(
              //     "Upgrade to Gold",
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 16,
              //       fontWeight: FontWeight.w500,
              //     ),
              //   ),
              // ),
              const SizedBox(height: 8),
              const Text(
                "You'll be charged \$39.99 monthly. Cancel anytime.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.home, size: 28, color: Colors.black),
                  Icon(Icons.search, size: 28, color: Colors.black),
                  Icon(Icons.favorite_border, size: 28, color: Colors.black),
                  Icon(Icons.person, size: 28, color: Colors.black),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
