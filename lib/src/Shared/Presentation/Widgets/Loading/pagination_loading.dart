import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter/material.dart';

import '../Builders/conditional_builder.dart';
import 'loading.dart';

class PaginationLoading extends StatelessWidget {
  final bool paginationLoading;
  final bool isDark;

  const PaginationLoading({
    required this.paginationLoading,
    this.isDark = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: paginationLoading,
      onBuild: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.toH()),
        child: Loading.pulse(),
      )),
      onFeedBack: const SizedBox(),
    );
  }
}
