import 'package:flutter/material.dart';

import '../../../../Core/Services/NavigatorService/navigator_service.dart';

class IconBack extends StatelessWidget {
  const IconBack({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => NavigatorService().back(),
        child: const Icon(Icons.arrow_back));
  }
}
