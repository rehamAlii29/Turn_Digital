import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Home/data/models/type_model.dart';
import 'package:flutter_base/src/Features/Home/presentation/widgets/card_type.dart';

class SliderCardType extends StatelessWidget {
  const SliderCardType({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 39.toH(),
      child: ListView.separated(
          shrinkWrap: true,
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              CardType(type: TypeModel.typeList[index]),
          separatorBuilder: (context, index) => 11.ESW(),
          itemCount: TypeModel.typeList.length),
    );
  }
}
