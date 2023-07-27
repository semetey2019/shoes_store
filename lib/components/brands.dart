import 'package:flutter/material.dart';
import 'package:shose_store/theme/app_colors.dart';
import 'package:shose_store/theme/app_text_style.dart';
import 'package:shose_store/theme/sized.dart';

class Brands extends StatelessWidget {
  const Brands({
    super.key,
    required this.image,
    required this.brand,
    required this.price,
  });
  final Image image;
  final String brand;
  final String price;
  // final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.circleColor),
          child: image,
        ),
        Sized.height8,
        Text('$brand', style: AppTextStyle.brandStyle),
        Sized.height4,
        Text('$price', style: AppTextStyle.priceStyle)
      ],
    );
  }
}
