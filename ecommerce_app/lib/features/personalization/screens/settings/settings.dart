import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ///header

          TPrimaryheaderContainer(child: Column(
            children: [

              ///appbar
              TAppBar(title: Text("Account",style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),


              ///user profle card
              const TUserProfileTitle(),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),),


          ///body
           const Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///account settings
                    TSectionHeading(title: 'Account Settings'),
                    SizedBox(height: TSizes.spaceBtwItems),

                  ],
                ),
              ),

        ],
        ),
      ),
    );
  }
}


