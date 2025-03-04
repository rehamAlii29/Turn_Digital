import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';

import '../../../data/models/drawer_model.dart';
import 'counter_badge.dart';

class CardIconDrawer extends StatelessWidget {
  final DrawerModel data;

  const CardIconDrawer({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: data.onTap,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.topRight,
            clipBehavior: Clip.none,
            children: [
              ImageGeneric.asset(
                url: data.icon,
                options: const ImageOptions(width: 23, height: 23),
              ),
              if (data.counter != 0)
                Positioned(
                  top: -1,
                  right: -1,
                  child: CounterBadge(
                    counter: data.counter,
                  ),
                )
            ],
          ),
          14.ESW(),
          CustomText(
            data.title,
            fontSize: 16,
          )
        ],
      ),
    );
  }
}
