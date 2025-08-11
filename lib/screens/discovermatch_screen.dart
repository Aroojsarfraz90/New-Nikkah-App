// import 'package:flutter/material.dart';

// void main() {
//   runApp(const DiscoverMatchesApp());
// }

// class DiscoverMatchesApp extends StatelessWidget {
//   const DiscoverMatchesApp({super.key});

//   Widget _navIcon(IconData icon, Color color) {
//     return Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       padding: const EdgeInsets.all(8),
//       child: Icon(icon, color: color, size: 28),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Discover Matches App",
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(height: 8),
//               const Text(
//                 "Discover Matches",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 12),

//               // Upgrade Banner
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 16),
//                 padding: const EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF0A9F7E),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Row(
//                   children: [
//                     const Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Upgrade to Nika7 Gold",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           SizedBox(height: 4),
//                           Text(
//                             "See who likes you & unlock premium features",
//                             style: TextStyle(fontSize: 12, color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.white,
//                         foregroundColor: Colors.teal,
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 12,
//                           vertical: 6,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                       ),
//                       child: const Text("Upgrade"),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Profile Card
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 16),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 6,
//                       offset: const Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Stack(
//                     children: [
//                       // Image
//                       Image.network(
//                         "https://images.unsplash.com/photo-1595152772835-219674b2a8a6",
//                         height: 400,
//                         width: double.infinity,
//                         fit: BoxFit.cover,
//                       ),

//                       // Distance Tag
//                       Positioned(
//                         top: 12,
//                         left: 12,
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 8,
//                             vertical: 4,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.8),
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: const Text(
//                             "1 km",
//                             style: TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                       ),

//                       // Bottom Overlay
//                       Positioned(
//                         bottom: 0,
//                         left: 0,
//                         right: 0,
//                         child: Container(
//                           padding: const EdgeInsets.all(12),
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 Colors.black.withOpacity(0.8),
//                                 Colors.black.withOpacity(0.4),
//                                 Colors.transparent,
//                               ],
//                               begin: Alignment.bottomCenter,
//                               end: Alignment.topCenter,
//                             ),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: const [
//                                   Text(
//                                     "Mohammad Ali, 33",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Text(
//                                     "Charted Accountant",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.symmetric(
//                                   horizontal: 8,
//                                   vertical: 4,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: Colors.brown,
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: const Text(
//                                   "Quick View",
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const Spacer(),

//               // Bottom Navigation
//               Container(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 12,
//                   horizontal: 24,
//                 ),
//                 decoration: const BoxDecoration(color: Colors.white),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     _navIcon(Icons.close, Colors.teal),
//                     _navIcon(Icons.favorite, Colors.brown),
//                     _navIcon(Icons.star, Colors.grey),
//                     _navIcon(Icons.chat_bubble_outline, Colors.grey),
//                     _navIcon(Icons.person_outline, Colors.grey),
//                     _navIcon(Icons.settings_outlined, Colors.grey),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(const DiscoverMatchApp());
}

class DiscoverMatchApp extends StatelessWidget {
  const DiscoverMatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // "Discover Matches" Title
            const Padding(
              padding: EdgeInsets.only(top: 0),
              child: Text(
                "Discover Matches",
                style: TextStyle(
                  fontFamily:
                      'ArticulatCFExtraBold', // FONTSPRING DEMO - Articulat CF Extra Bold
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  color: Color(0xFF323232),
                  height: 32 / 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 10),

            // Upgrade Container
            Container(
              alignment: (Alignment.topRight),
              width: 359,
              height: 76,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1, color: Colors.transparent),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF017A71),
                    Color(0xFF01BAA6),
                    Color(0xFF07615A),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFF017A71),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 11,
                      left: 16,
                      child: Text(
                        "Upgrade to Nika7 Gold",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 15.63,
                          color: Colors.white,
                          height: 24 / 15.63,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 16,
                      child: Text(
                        "See who likes you & unlock premium features",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 13.67,
                          color: Colors.white,
                          height: 20 / 13.67,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 16,
                      child: Container(
                        width: 89.14,
                        height: 36,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFEFCF9),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFF017A71)),
                        ),
                        child: Center(
                          child: Text(
                            "Upgrade",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 13.78,
                              color: const Color(0xFF00786F),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Profile Card
            Container(
              width: 264.6,
              height: 403.64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/images/1stphoto.png"),
                  // Replace with actual path
                  fit: BoxFit.cover,
                ),
              ),

              child: Stack(
                children: [
                  // Positioned(

                  //   top: 551.55,
                  //   left: 65,
                  //   child: Container(
                  //     width: 264.6137390136719,
                  //     height: 74.45064544677734,
                  //     decoration: BoxDecoration(
                  //       color: Colors.black,
                  //       borderRadius: const BorderRadius.only(
                  //         bottomLeft: Radius.circular(15),
                  //         bottomRight: Radius.circular(15),
                  //       ),
                  //     ),
                  //   ),

                  //   bottom: 60,
                  //   left: 16,
                  //   child: Text(
                  //     "Mohammad Ali, 33",
                  //     style: TextStyle(
                  //       fontFamily: 'ArticulatCFExtraBold',
                  //       fontWeight: FontWeight.w800,
                  //       fontSize: 24,
                  //       color: Colors.white,
                  //       height: 1.5,
                  //     ),
                  //   ),
                  // ),
                  // Positioned(
                  //   bottom: 35,
                  //   left: 16,
                  //   child: Text(
                  //     "Charted Accountant",
                  //     style: TextStyle(
                  //       fontFamily: 'ArticulatCFMedium',
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 14,
                  //       color: Colors.white,
                  //       height: 1.5,
                  //     ),
                  //   ),
                  // ),
                  // Positioned(
                  //   bottom: 35,
                  //   right: 16,
                  //   child: Container(
                  //     width: 70,
                  //     height: 23,
                  //     decoration: BoxDecoration(
                  //       color: const Color(0xFFB39C80),
                  //       borderRadius: BorderRadius.circular(16),
                  //     ),
                  //     child: const Center(
                  //       child: Text(
                  //         "Quick View",
                  //         style: TextStyle(
                  //           fontFamily: 'ArticulatCF',
                  //           fontWeight: FontWeight.w400,
                  //           fontSize: 12,
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                    top: 551.55,
                    left: 65,
                    child: Container(
                      width: 264.6137390136719,
                      height: 74.45064544677734,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Mohammad Ali, 33",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Chartered Accountant",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.brown[300],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Text(
                                  "Quick View",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Bottom Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Cross Button
                Container(
                  width: 78,
                  height: 78,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFE9E1),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/close.png", // replace
                      width: 15,
                      height: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Heart Button
                Container(
                  width: 99,
                  height: 99,
                  decoration: BoxDecoration(
                    color: const Color(0xFFB39C80),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/heart.png", // replace
                      width: 42.5,
                      height: 36.47,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Star Button
                Container(
                  width: 78,
                  height: 78,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/Star.png", // replace
                      width: 25,
                      height: 23.75,
                    ),
                  ),
                ),
              ],
            ),

            const Spacer(),

            // Bottom Navigation Bar
            Container(
              width: 351,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFFD8C7B3),
                borderRadius: BorderRadius.circular(166),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/firsticon.png",
                    width: 37,
                    height: 37,
                  ), // replace
                  Image.asset(
                    "assets/images/secondicon.png",
                    width: 37,
                    height: 37,
                  ), // replace
                  Image.asset(
                    "assets/images/thirdicon.png",
                    width: 37,
                    height: 37,
                  ), // replace
                  Image.asset(
                    "assets/images/fourthicon.png",
                    width: 37,
                    height: 37,
                  ), // replace
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
