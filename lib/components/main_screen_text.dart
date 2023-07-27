import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shose_store/components/ekinchibet.dart';
import 'package:shose_store/components/popular_brand.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 45, right: 8),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => Ekinchibet()),
                      //     );
                      //   },
                      // ),
                      for (int i = 5; i < 7; i++)
                        Image.asset(
                          "assets/images/$i.png",
                          height: 412,
                          fit: BoxFit.cover,
                        ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21, top: 220),
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
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ekinchibet()),
                                );
                              },
                              child: Container(
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
                                  Text(AppTexts.nike1,
                                      style: AppTextStyle.bannerText1),
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
                const SizedBox(
                  height: 3,
                ),
                const PopularBrand(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 18, bottom: 20, right: 18),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color(0xffE1E1E1),
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ]),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: GNav(
              backgroundColor: Colors.white,
              color: Colors.black,
              activeColor: Colors.black,
              tabBackgroundColor: Color(0xffF4F4F5),
              gap: 8,
              padding: EdgeInsets.all(12),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'menu',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'likes',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'user',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
