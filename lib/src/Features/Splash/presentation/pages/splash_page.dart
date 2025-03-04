part of 'splash_imports.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final splashController = Get.put(
      SplashController(),
    );
    return Scaffold(
      backgroundColor: AppColors.get.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.authBG,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: AnimatedContainer(
          duration: _splashDuration,
          margin: EdgeInsets.only(top: 100.toH()),
          child: Center(
            child: GetBuilder<SplashController>(
                init: splashController,
                builder: (_) {
                  return Image.asset(
                    Assets.splashLogo,
                    height: _.animation.value * _logoHeight ?? 100,
                    width: _.animation.value * _logoWidth ?? 100,
                  );
                }),
          ),
        ),
      ),
    );
  }
}
