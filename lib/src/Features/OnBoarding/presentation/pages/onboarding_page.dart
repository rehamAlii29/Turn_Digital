part of "imports_onboarding.dart";

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: GetBuilder<OnBoardingController>(
            init: OnBoardingController(),
            builder: (_) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: PageView.builder(
                          physics: AppPhysics.bouncingPhysics,
                          controller: _.pageController,
                          itemCount: _.data.length,
                          onPageChanged: (index) => _.onPageChanged(index),
                          itemBuilder: (ctx, index) {
                            return OnBoardingScreenContentItem(
                              data: _.data[index],
                            );
                          }),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
