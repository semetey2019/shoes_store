import 'package:flutter/material.dart';

class ViewBanner extends StatefulWidget {
  const ViewBanner({super.key});

  @override
  State<ViewBanner> createState() => _ViewBannerState();
}

class _ViewBannerState extends State<ViewBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 29, top: 150),
            child: Text(
              'Just Dropped',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i < 7; i++)
                  Container(
                    height: 150,
                    width: 150,
                    padding: const EdgeInsets.all(5),
                    margin:
                        const EdgeInsets.only(left: 20, top: 8, bottom: 380),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 241, 241),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/$i.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
