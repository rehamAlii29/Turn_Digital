import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Organizer/domain/entities/organizer_e.dart';
import 'package:flutter_base/src/Features/Organizer/presentation/widgets/section_button_following.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

import 'card_follow_number.dart';
import 'divider_custom.dart';

class SectionOrganizerInfo extends StatelessWidget {
  final OrganizerE organizer;

  const SectionOrganizerInfo({super.key, required this.organizer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.toW()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageGeneric.network(
            url: organizer.picture,
            options: const ImageOptions(fit: BoxFit.cover, radius: 100),
          ),
          20.ESH(),
          CustomText(
            organizer.name,
            fontSize: 24,
          ),
          9.ESH(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardFollowNumber(
                number: organizer.numberOfFollowing,
                title: "Following",
              ),
              23.ESW(),
              const DividerCustom(),
              23.ESW(),
              CardFollowNumber(
                title: "Followers",
                number: organizer.numberOfFollowers,
              ),
            ],
          ),
          21.ESH(),
          const SectionButtonFollowing()
        ],
      ),
    );
  }
}
