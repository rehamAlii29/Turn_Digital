import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Services/NavigatorService/navigator_service.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/drawer_home.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/Builders/row_show_all_builder.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/DataBuilder/imports_data_builder.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/Loading/loading_box.dart';
import 'package:get/get.dart';

import '../../../../Core/Constants/Navigation/navigation_const.dart';
import '../../../AllEvents/presentation/manager/fetch_all_events_controller.dart';
import '../widgets/app_bar/app_bar_home.dart';
import '../widgets/banner_home.dart';
import '../widgets/slider_card_event_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FetchAllEventsController());
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: AppColors.get.homeScaColor,
      key: _scaffoldKey,
      appBar: AppBarHome(
        scaffoldKey: _scaffoldKey,
      ),
      drawer: const DrawerHome(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 21.toH(),
          horizontal: 24.toW(),
        ),
        child: ListView(children: [
          RowShowAll(
            title: "Upcoming Events",
            onTap: () {
              NavigatorService().to(allEventPageKey);
            },
          ),
          10.ESH(),
          GetBuilder<FetchAllEventsController>(
            builder: (_) {
              return DataStatusBuilder(
                  status: _.state,
                  onLoadingBuild: LoadingBox(),
                  onDoneBuild: _.stateUnReady
                      ? 0.ESH()
                      : SliderCardEventHome(
                          events: _.state.data ?? [],
                        ));
            },
          ),
          29.ESH(),
          const BannerHome(),
        ]),
      ),
    );
  }
}
