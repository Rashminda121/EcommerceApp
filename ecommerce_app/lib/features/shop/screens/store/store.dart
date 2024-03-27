import 'package:ecommerce_app/common/styles/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCountericon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child:ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///Search Bar
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(text: 'Search in Store',showBorder: true,showBackground: false,padding: EdgeInsets.zero),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      ///featured brands

                      TSectionHeading(title: 'Featured Brands', onPressed:(){}),
                      const SizedBox(height: TSizes.spaceBtwItems/1.5),

                      TGridLayout(itemCount: 4, mainAxisExtent: 80,itemBuilder: (_,index){
                        return GestureDetector(
                          onTap: (){},
                          child: TRoundedContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                /// -- Icon
                                Flexible(
                                  child: TCircularImage (
                                    isNetworkImage: false,
                                    image: TImages.product1,
                                    backgroundColor: Colors.transparent,
                                    overlayColor: THelperFunctions.isDarkMode (context) ? TColors.white: TColors.black,
                                  ),
                                ),
                                const SizedBox(width: TSizes.spaceBtwItems/2),

                                ///Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  
                                    children: [
                                      const TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.large),
                                  
                                      Text(
                                        '256 products sample text',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                )


                              ],
                            ),
                          ),
                        );
                      }),

                    ],
                  )

                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
