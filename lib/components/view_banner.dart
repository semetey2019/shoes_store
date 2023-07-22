import 'package:flutter/material.dart';
import 'package:shose_store/theme/app_text_style.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 150),
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
                  Container(
                    height: 150,
                    width: 150,
                    padding: const EdgeInsets.all(5),
                    margin:
                        const EdgeInsets.only(left: 20, top: 8, bottom: 380),
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
                const Column(
                  children: [
                    Text(
                      "Nike ISPA Overreact Sail Multi",
                      style: AppTextStyle.bannerText,
                    ),
                    Text("Lowest Ask", style: AppTextStyle.bannerText1),
                    Text(
                      "233",
                      style: AppTextStyle.bannerText2,
                      textAlign: TextAlign.left,
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
