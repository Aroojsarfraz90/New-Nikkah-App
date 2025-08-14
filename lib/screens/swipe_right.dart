import 'package:flutter/material.dart';
import 'dart:math' as math;
// import 'swipe_left_screen.dart'; // Import your SwipeLeftScreen here

class SwipeRightScreen extends StatelessWidget {
  const SwipeRightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.65; // 65% width

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: const Text(
                "Discover Matches",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            // Upgrade Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF006400),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Upgrade to Nika7 Gold",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "See who likes you & unlock premium features",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 8,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Upgrade",
                        style: TextStyle(
                          color: Color(0xFF006400),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Profile Card
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 380,
                      width: cardWidth,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Stack(
                          children: [
                            // Abdul Bakr image
                            Image.asset(
                              "assets/images/2ndphoto.png",
                              fit: BoxFit.cover,
                              width: cardWidth,
                              height: double.infinity,
                            ),

                            // Adjusted Mohammad Ali image
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Transform.rotate(
                                angle:
                                    math.pi /
                                    18, // slight tilt (positive angle)
                                child: SizedBox(
                                  width: cardWidth,
                                  height: 380,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.asset(
                                          "assets/images/1stphoto.png",
                                          fit: BoxFit.cover,
                                          width: cardWidth,
                                          height: double.infinity,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Transform.rotate(
                                          angle:
                                              math.pi /
                                              18, // match tilt for black area
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 8,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.black.withOpacity(
                                                0.8,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                    bottomLeft: Radius.circular(
                                                      16,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(16),
                                                  ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Mohammad Ali, 29",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    SizedBox(height: 4),
                                                    Text(
                                                      "Photographer",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 6,
                                                      ),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF8B5E3C),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: const Text(
                                                    "Quick View",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                    ),
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
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Icons
                    SizedBox(
                      width: 295,
                      height: 99,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _customCircleIcon(
                            bgSize: 78,
                            iconSize: 30,
                            icon: Icons.close,
                            bgColor: Colors.brown.shade100,
                            iconColor: Colors.green,
                          ),
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => const SwipeLeftScreen(),
                            //     ),
                            //   );
                            // },
                            child: _customCircleIcon(
                              bgSize: 99,
                              iconSize: 42.5,
                              icon: Icons.favorite,
                              bgColor: const Color(0xFF8B5E3C),
                              iconColor: Colors.white,
                            ),
                          ),
                          _customCircleIcon(
                            bgSize: 78,
                            iconSize: 25,
                            icon: Icons.star,
                            bgColor: Colors.brown.shade100,
                            iconColor: Colors.brown,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const SwipeLeftScreen(),
              //     ),
              //   );
              // }, // Bottom Bar
              // child: Container(
              //   height: 80,
              //   decoration: BoxDecoration(
              //     color: const Color(0xFF8B5E3C),
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   padding: const EdgeInsets.symmetric(
              //     vertical: 12,
              //     horizontal: 20,
              //   ),
              //   child: const Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Icon(Icons.phone, color: Colors.white, size: 26),
              //       Icon(
              //         Icons.chat_bubble_outline,
              //         color: Colors.white,
              //         size: 26,
              //       ),
              //       Icon(Icons.person_outline, color: Colors.white, size: 26),
              //       Icon(Icons.share, color: Colors.white, size: 26),
              //     ],
              //   ),
              // ),
            ),
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
                  ),
                  Image.asset(
                    "assets/images/secondicon.png",
                    width: 37,
                    height: 37,
                  ),
                  Image.asset(
                    "assets/images/thirdicon.png",
                    width: 37,
                    height: 37,
                  ),
                  Image.asset(
                    "assets/images/fourthicon.png",
                    width: 37,
                    height: 37,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _customCircleIcon({
    required double bgSize,
    required double iconSize,
    required IconData icon,
    required Color bgColor,
    required Color iconColor,
  }) {
    return Container(
      width: bgSize,
      height: bgSize,
      decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
      child: Center(
        child: Icon(icon, color: iconColor, size: iconSize),
      ),
    );
  }
}
