import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Core/Utils/date_utilities.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

class CardDate extends StatelessWidget {
  final String date;

  const CardDate({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.toW(), vertical: 3.toH()),
      decoration: BoxDecoration(
          color: AppColors.get.white.withOpacity(.7),
          borderRadius: BorderRadius.circular(10.toRad())),
      child: Column(
        children: [
          CustomText(
            DateUtilities.formatDateTime(date)["day"].toString(),
            fontSize: 18,
            fontWeight: FW.bold,
            color: AppColors.get.eventTitles,
          ),
          CustomText(
            DateUtilities.formatDateTime(date)["month"].toString(),
            fontSize: 10,
            color: AppColors.get.eventTitles,
          )
        ],
      ),
    );
  }
}
