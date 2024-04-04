import 'package:ecommerce_app/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/brand_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../common/styles/rounded_container.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
      
                        TGridLayout(itemCount: 4, mainAxisExtent: 80,itemBuilder: (_,index) {
                          return const TBrandCard(showBorder: false);
                        }),
      
                      ],
                    )
      
                  ),
      
                  ///tabs----
                  bottom: const TTabBar(
                    tabs: [

                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),

                  ],)

                ),
              ];
            },
          body: const TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    // Brands
                    TRoundedContainer(
                      showBorder: true,
                      borderColor: TColors.darkGrey,
                      backgroundColor: Colors.transparent,
                      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
                      child: Column(
                        children: [
                          TBrandCard(showBorder: false)
                        ],

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


