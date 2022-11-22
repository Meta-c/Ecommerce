import 'package:ecommerce/core/utils/size_config.dart';
import 'package:ecommerce/features/on%20Boarding/presentation/widgets/custom_indicator.dart';
import 'package:ecommerce/features/on%20Boarding/presentation/widgets/custom_page_view.dart';
import 'package:ecommerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.defaultSize! * 22,
            child: CustomDotIndicator(
                dotIndex:
                    pageController!.hasClients ? pageController?.page : 0)),
        Visibility(
          visible: pageController!.hasClients && pageController?.page == 2
              ? false
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: InkWell(
              onTap: () {
                pageController?.jumpToPage(2);
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              onTap: () {
                pageController?.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut);
              },
              text: pageController!.hasClients && pageController?.page == 2
                  ? 'Get Started'
                  : 'Next',
            )),
      ],
    );
  }
}
