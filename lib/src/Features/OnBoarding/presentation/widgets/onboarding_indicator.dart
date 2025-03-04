part of 'imports_widgets_onboarding.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(builder: (_) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0.h),
        child: SmoothPageIndicator(
          controller: _.pageController,
          count: _.data.length,
          effect: JumpingDotEffect(
              activeDotColor: AppColors.get.white,
              dotColor: AppColors.get.white.withOpacity(0.5),
              dotHeight: 8.h,
              dotWidth: 8.h,
              radius: 8),
          onDotClicked: _.onPageChanged,
        ),
      );
    });
  }
}
