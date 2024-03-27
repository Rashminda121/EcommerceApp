import 'package:ecommerce_app/common/widgets/products/product_cards/widgets/TShadowStyle.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.white,
      ),
    );
  }
}
