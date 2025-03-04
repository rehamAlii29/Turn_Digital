import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class SectionAboutEvent extends StatelessWidget {
  final String about;

  const SectionAboutEvent({super.key, required this.about});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomText(
          "About Event",
          fontSize: 18,
          fontWeight: FW.medium,
        ),
        CustomText(about)
      ],
    );
  }
}
