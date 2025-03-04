part of 'imports_widgets_onboarding.dart';

class OnBoardingScreenContentItem extends StatelessWidget {
  final OnBoardingModel data;

  const OnBoardingScreenContentItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 475.toH(),
          width: 375.toW(),
          child: Image.asset(
            data.imageUrl ?? "",
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: OnBoardingFooter(
              data: data,
            ),
          ),
        )
      ],
    );
  }
}
