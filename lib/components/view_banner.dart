import 'package:flutter/material.dart';

import 'package:shose_store/theme/app_text_style.dart';
import 'package:shose_store/theme/app_texts.dart';

class ViewBanner extends StatefulWidget {
  const ViewBanner({super.key});

  @override
  State<ViewBanner> createState() => _ViewBannerState();
}

class _ViewBannerState extends State<ViewBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'Just Dropped',
              style: AppTextStyle.bannerText0,
            ),
          ),
          const SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i < 4; i++)
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(
                          left: 20,
                          top: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.grey)],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          'assets/images/$i.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppTexts.nike,
                              style: AppTextStyle.bannerText,
                            ),
                            Text(
                              AppTexts.nike1,
                            ),
                            Text(
                              AppTexts.nike2,
                              style: AppTextStyle.bannerText2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
