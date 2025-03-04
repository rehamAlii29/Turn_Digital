import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Home/data/models/drawer_model.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/drawer/card_icon_drawer.dart';

class ListCardIconDrawer extends StatelessWidget {
  const ListCardIconDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 4.toW()),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) =>
            CardIconDrawer(data: DrawerModel.drawer[index]),
        separatorBuilder: (context, index) => 33.ESH(),
        itemCount: DrawerModel.drawer.length);
  }
}
