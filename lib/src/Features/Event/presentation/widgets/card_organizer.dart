import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/organizer_mini_e.dart';
import 'package:flutter_base/src/Features/Organizer/presentation/manager/fetch_organizer_details_controller.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/custom_rounded_button.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:get/get.dart';

import '../../../../Core/Constants/Navigation/navigation_const.dart';

class CardOrganizer extends StatelessWidget {
  final OrganizerMiniE organizerMiniE;

  const CardOrganizer({super.key, required this.organizerMiniE});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FetchOrganizerDetailsController C =
            Get.put(FetchOrganizerDetailsController());
        C.fetchOrganizerDetails(organizerMiniE.id);
        NavigatorService().to(organizerPageKey);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ImageGeneric.network(
            url: organizerMiniE.picture,
            options: ImageOptions(
                width: 44,
                height: 44,
                fit: BoxFit.cover,
                borderRadius: BorderRadius.circular(10.toRad())),
          ),
          13.ESW(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  organizerMiniE.name,
                  fontSize: 15,
                ),
                CustomText(
                  "Organizer",
                  fontSize: 12,
                  color: AppColors.get.greyLight,
                ),
              ],
            ),
          ),
          ButtonDefault(
            width: 60,
            height: 28,
            title: "Follow",
            titleColor: AppColors.get.primary,
            backgroundColor: AppColors.get.orangeLight,
            onPressed: () {},
            titleSize: 12,
          )
        ],
      ),
    );
  }
}
