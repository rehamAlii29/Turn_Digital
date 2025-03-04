import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Organizer/presentation/manager/fetch_organizer_details_controller.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/DataBuilder/imports_data_builder.dart';
import 'package:get/get.dart';

import '../widgets/section_organizer_info.dart';
import '../widgets/tab_bar_organizer.dart';
import '../widgets/tab_bar_view_organizer.dart';

class OrganizerPage extends StatelessWidget {
  const OrganizerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
          ),
          body: GetBuilder<FetchOrganizerDetailsController>(builder: (_) {
            return DataStatusBuilder(
              status: _.state,
              onDoneBuild: _.stateUnReady
                  ? 0.ESH()
                  : Column(
                      children: [
                        SectionOrganizerInfo(
                          organizer: _.state.data!,
                        ),
                        const TapBarOrganizer(),
                        TabBarViewOrganizer(
                          organizer: _.state.data!,
                        )
                      ],
                    ),
            );
          }),
        ));
  }
}
