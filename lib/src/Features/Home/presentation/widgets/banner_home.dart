import 'package:flutter/cupertino.dart';

import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/Src/generic_image_lib.dart';
import '../../../../Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/Src/options/image_options.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageGeneric.network(
      url: "https://livada.org/wp-content/uploads/matchgift.png",
      options: const ImageOptions(
          width: double.infinity, height: 127, fit: BoxFit.cover),
    );
  }
}
