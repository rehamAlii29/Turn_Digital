import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Services/NetWorkManger/network_manger.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/DataBuilder/imports_data_builder.dart';
import 'package:get/get.dart';
import '../../../../Core/Constants/Strings/assets.dart';
import '../../../../Core/Styles/Colors/app_colors.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/custom_rounded_button.dart';
import '../../../Home/presentation/manager/share_event_handler.dart';
import '../manager/fetch_event_details_controller.dart';
import '../widgets/app_bar_event_details.dart';
import '../widgets/section_event_content.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    FetchEventDetailsController con = Get.put(FetchEventDetailsController());

    return GestureDetector(
      onLongPress: () async {
        if (await NetworkManager.isConnected()) {
          ShareEventHandler.shareEvent(
              con.state.data?.title ?? "",
              con.state.data?.addressTitle ?? "",
              con.state.data?.picture ?? "");
        }
      },
      child: Scaffold(
        appBar: const HeaderEventDetails(),
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 24.toH(), vertical: 20.toH()),
          child: GetBuilder<FetchEventDetailsController>(builder: (_) {
            return DataStatusBuilder(
              status: _.state,
              onDoneBuild: (_.stateUnReady)
                  ? 0.ESH()
                  : (_.state.data == null)
                      ? const SizedBox()
                      : Column(
                          children: [
                            30.ESH(),
                            Expanded(
                              child: ListView(
                                children: [
                                  SectionEventContent(
                                    eventE: _.state.data!,
                                  )
                                ],
                              ),
                            ),
                            ButtonDefault.image(
                              color: AppColors.get.white,
                              height: 58,
                              image: const AssetImage(Assets.arrow),
                              label: "Buy Ticket \$ ${_.state.data!.price}",
                              onPressed: () {},
                            ),
                          ],
                        ),
            );
          }),
        ),
      ),
    );
  }
}
