import 'package:flutter/material.dart';
import 'package:shose_store/theme/app_colors.dart';
import 'package:shose_store/theme/app_text_style.dart';
import 'package:shose_store/theme/app_texts.dart';

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
            padding: const EdgeInsets.only(left: 15, top: 45),
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
                  padding: const EdgeInsets.only(left: 45, top: 210),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                                text: AppTexts.newIn,
                                style: AppTextStyle.newIn),
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                                text: AppTexts.nikeBanner,
                                style: AppTextStyle.mainText),
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            textAlign: TextAlign.start,
                            text: const TextSpan(
                                text: AppTexts.usd,
                                style: AppTextStyle.mainUsd),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset("assets/images/on.png"),
                                  ],
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset(
                                  "assets/images/off.png",
                                  fit: BoxFit.contain,
                                  width: 8,
                                  color: AppColors.offIconColor,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset(
                                  "assets/images/off.png",
                                  fit: BoxFit.contain,
                                  width: 8,
                                  color: AppColors.offIconColor,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset(
                                  "assets/images/off.png",
                                  fit: BoxFit.contain,
                                  width: 8,
                                  color: AppColors.offIconColor,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset(
                                  "assets/images/off.png",
                                  fit: BoxFit.contain,
                                  width: 8,
                                  color: AppColors.offIconColor,
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
          ),
          Column(
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
        ],
      ),
    );
  }
}
