import 'package:flutter/material.dart';
import 'package:shose_store/theme/app_colors.dart';

class AppTextStyle {
  static const TextStyle bannerText =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
  static const TextStyle bannerText1 = TextStyle(
      color: Color.fromARGB(223, 25, 25, 20),
      fontSize: 11,
      fontWeight: FontWeight.w100);
  static const TextStyle bannerText2 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w800);
  static const TextStyle bannerText0 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle newIn = TextStyle(fontSize: 12, color: Colors.white);
  static const TextStyle mainText =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
  static const TextStyle mainUsd =
      TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white);
  static const titleStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      fontFamily: 'PopularBrands.ttf',
      color: AppColors.titleColor);
  static const brandStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.brandColor,
  );
  static const priceStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.greyColor,
  );
}
