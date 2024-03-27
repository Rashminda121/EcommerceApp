

import 'package:ecommerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/device/device_utility.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryheaderContainer(
              child: Column(
                children: [
                  ///App Bar
                  THomeAppBar(),

                  /// search bar

                  Container(
                    width: TDeviceUtils.getScreenWidth(context),
                    padding: const EdgeInsets.all(TSizes.md),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
                      border: Border.all(color: TColors.grey),
                    ),
                  ),


                  /// categories



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}







