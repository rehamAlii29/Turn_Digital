import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/DataBuilder/imports_data_builder.dart';
import 'package:get/get.dart';
import '../../../../Shared/Presentation/Widgets/Loading/pagination_loading.dart';
import '../manager/fetch_all_events_controller.dart';
import '../widgets/app_bar_all_events.dart';
import '../widgets/list_card_event_rect.dart';

class AllEventsPage extends StatelessWidget {
  const AllEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarAllEvents(),
        body: GetBuilder<FetchAllEventsController>(builder: (_) {
          return DataStatusBuilder(
            status: _.state,
            onDoneBuild: _.stateUnReady
                ? 0.ESH()
                : Column(
                    children: [
                      Expanded(
                        child: ListCardEventRect(
                          events: _.state.data ?? [],
                          controller: _.scrollController,
                        ),
                      ),
                      PaginationLoading(paginationLoading: _.paginationLoading)
                    ],
                  ),
          );
        }));
  }
}
