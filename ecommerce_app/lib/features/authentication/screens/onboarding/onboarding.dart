import "package:ecommerce_app/features/authentication/controllers/onboarding_controller.dart";
import "package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboardingDotNavigation.dart";
import "package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboardingNextButton.dart";
import "package:ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart";
import "package:ecommerce_app/utils/constants/colors.dart";
import "package:ecommerce_app/utils/constants/image_strings.dart";
import "package:ecommerce_app/utils/constants/sizes.dart";
import "package:ecommerce_app/utils/constants/text_strings.dart";
import "package:ecommerce_app/utils/device/device_utility.dart";
import "package:ecommerce_app/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

import "widgets/onboarding_page.dart";

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scroll Page
          PageView(
            children: const [
              OnboardingPage(
                image: TImages.onboard1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onboard2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onboard3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///Skip Button
          const OnboardingSkip(),

          ///Dot navigation smooth  page indicator
          const OnboardingDotNavigation(),

          ///Circular Button
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}


