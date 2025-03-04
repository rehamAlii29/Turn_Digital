import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/DataBuilder/imports_data_builder.dart';
import '../../../../Core/Constants/Decorations/app_Insets.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/Src/generic_image_lib.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/Src/options/image_options.dart';
import '../manager/fetch_event_details_controller.dart';
import 'app_bar_event_header.dart';
import 'card_app_bar_bottom.dart';
import 'package:get/get.dart';

class HeaderEventDetails extends StatelessWidget
    implements PreferredSizeWidget {
  const HeaderEventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FetchEventDetailsController>(builder: (_) {
      return DataStatusBuilder(
        onErrorBuild: SizedBox.shrink(),
        status: _.state,
        onDoneBuild: _.stateUnReady
            ? 0.ESH()
            : SizedBox(
                height: 244.toH(),
                width: double.infinity,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ImageGeneric.network(
                      url: _.state.data?.picture ?? "",
                      options: const ImageOptions(
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Column(
                      children: [
                        30.ESH(),
                        Padding(
                          padding: AppInsets.defaultScreenALL,
                          child: const AppBarEventHeader(),
                        ),
                      ],
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: -30.toH(),
                      child: CardAppBarBottom(
                        numberOfGoing: _.state.data?.numberOfGoing ?? 0,
                      ),
                    ),
                  ],
                ),
              ),
      );
    });
  }

  @override
  Size get preferredSize => Size.fromHeight(244.toH());
}
