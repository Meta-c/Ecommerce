import 'package:ecommerce/features/on%20Boarding/presentation/on_boarding_controller.dart';
import 'package:ecommerce/features/on%20Boarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      init: Get.find<OnBoardingController>(),
      builder: (controller) => PageView(
        controller: pageController,
        onPageChanged: (value) => controller.setIndex(value),
        children: const [
          PageViewItem(
            title: 'E Shopping',
            subTitle: 'Explore top organic fruits & grab them',
            image: 'assets/images/onboarding1.png',
          ),
          PageViewItem(
            title: 'Delivery on the way',
            subTitle: 'Get your order by speed delivery',
            image: 'assets/images/onboarding2.png',
          ),
          PageViewItem(
            title: 'Delivery Arrived',
            subTitle: 'Order is arrived at your Place',
            image: 'assets/images/onboarding3.png',
          ),
        ],
      ),
    );
  }
}
