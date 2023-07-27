import 'package:flutter/material.dart';
import 'package:shose_store/components/brands.dart';
import 'package:shose_store/theme/app_colors.dart';
import 'package:shose_store/theme/app_text_style.dart';
import 'package:shose_store/theme/app_texts.dart';
import 'package:shose_store/theme/sized.dart';

class PopularBrand extends StatelessWidget {
  const PopularBrand({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 10,
          ),
          child: SizedBox(
            width: double.infinity,
            height: 28,
            child: Text(
              AppTexts.title,
              style: AppTextStyle.titleStyle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: SizedBox(
            width: double.infinity,
            height: 112,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 72,
                  height: 112,
                  ///////
                  color: AppColors.containerColor,
                  child: Center(
                    child: Brands(
                      image: Image.asset('assets/images/nike.png'),
                      brand: AppTexts.nike,
                      price: AppTexts.price,
                    ),
                  ),
                ),
                Sized.width10,
                Brands(
                  image: Image.asset('assets/images/adidas.png'),
                  brand: AppTexts.adidas,
                  price: AppTexts.price,
                ),
                Sized.width10,
                Brands(
                  image: Image.asset('assets/images/vans.png'),
                  brand: AppTexts.vans,
                  price: AppTexts.price,
                ),
                Sized.width10,
                Brands(
                  image: Image.asset('assets/images/vans.png'),
                  brand: AppTexts.balenciaga,
                  price: AppTexts.price,
                ),
                Sized.width10,
                Brands(
                  image: Image.asset('assets/images/nike.png'),
                  brand: AppTexts.nike,
                  price: AppTexts.price,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
