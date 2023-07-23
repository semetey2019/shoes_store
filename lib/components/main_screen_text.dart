import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(13),
            child: Stack(
              children: [
                ClipRRect(
                  child: Center(
                    child: Image.asset(
                      "assets/images/img.png",
                      height: 380,
                      width: 550,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                              text: "New in",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                          RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                              text:
                                  "Nike SB Janoski QS Turbo \n Green Tie Dye Skate Shoes",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                              text: "236.23 USD",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/on.png"),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/images/off.png",
                            color: Colors.grey,
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
