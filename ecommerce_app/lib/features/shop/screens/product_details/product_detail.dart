import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// product image slider
            TProductImageSlider(),

            ///product details
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                /// Rating & Share
                  TRatingAndShare(),


                /// - Price, Title, Stock, & Brand
                  TProductMetaData(),

                /// -- Attributes
                  TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                /// -- Checkout Button
                 SizedBox(
                     width:double.infinity,
                     child: ElevatedButton(onPressed:(){}, child:const Text('Checkout'))),
                  const SizedBox (height: TSizes.spaceBtwItems),
                  
                /// Description

                  const TSectionHeading(title: 'Description',showActionButton: false,),
                  const SizedBox (height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a sleeveless vest from Nike, available in a stylish blue color. It is made from high-quality, breathable materials for maximum comfort and performance. Perfect for running, working out, or any other activity where you need freedom of movement and a cool, comfortable fit.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Show less',
                  )

                /// - Reviews
                  const SizedBox (height: TSizes.spaceBtwSections),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}



