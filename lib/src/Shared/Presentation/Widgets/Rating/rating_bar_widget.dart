import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../Core/Constants/Strings/assets.dart';
import '../../../../Core/Styles/Colors/app_colors.dart';
import '../GeneralWidgets/Image/generic_image/Src/generic_image_lib.dart';

/// Depends on flutter_rating_bar package

class RatingBarWidget extends StatelessWidget {
  final double initialRating;
  final double reviewsNumber;
  final double? iconSize;
  final EdgeInsets? itemPadding;
  final bool isDisabled;
  final Color? labelColor;
  final String? date;
  final ValueChanged<double> onRatingUpdate;

  const RatingBarWidget({
    Key? key,
    required this.onRatingUpdate,
    this.initialRating = 0,
    this.itemPadding,
    this.isDisabled = false,
    this.reviewsNumber = 20,
    this.labelColor,
    this.date,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return initialRating != 0
        ? AbsorbPointer(
            absorbing: isDisabled,
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 6.toH(),
              ),
              child: Row(
                children: [
                  RatingBar(
                    itemSize: (iconSize ?? 12).toW(),
                    initialRating: initialRating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    unratedColor: AppColors.get.third,

                    itemPadding: itemPadding ??
                        EdgeInsets.symmetric(horizontal: 1.5.toW()),
                    onRatingUpdate: onRatingUpdate,
                    ratingWidget: RatingWidget(
                      full: ImageGeneric.asset(
                        url: Assets.ratingFullStar,
                      ),
                      half: ImageGeneric.asset(
                        url: Assets.ratingFullStar,
                      ),
                      empty: ImageGeneric.asset(
                        url: Assets.ratingFullStar,
                      ),
                    ),

                    // cubit.rateProduct(rating),
                  ),
                ],
              ),
            ),
          )
        : 0.ESH();
  }
}
