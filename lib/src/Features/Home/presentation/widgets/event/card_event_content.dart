import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Constants/Strings/assets.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/event/card_going_overlay.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/event/card_icon_title.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class CardEventContent extends StatelessWidget {
  final String title;
  final String location;
  final int numberOfGoing;

  const CardEventContent({
    super.key,
    required this.title,
    required this.location,
    required this.numberOfGoing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.toW()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title,
            fontSize: 18,
          ),
          10.ESH(),
          SectionGoingOverLay(
            count: numberOfGoing,
          ),
          10.ESH(),
          CardIconTitle(
            title: location,
            icon: Assets.location,
          )
        ],
      ),
    );
  }
}
