import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Text/custom_text_lib.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../Core/Utils/date_utilities.dart';
import '../../../../Shared/Presentation/Widgets/Rating/rating_bar_widget.dart';
import '../../domain/entities/review_e.dart';

class CardReviewContent extends StatelessWidget {
  final ReviewE review;

  const CardReviewContent({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: CustomText(
                review.reviewerName,
                fontSize: 18,
                fontWeight: FW.bold,
              ),
            ),
            CustomText(
              ' ${DateUtilities.formatDateTime(review.reviewDate)["day"].toString()} '
              '${DateUtilities.formatDateTime(review.reviewDate)["month"].toString()} ',
              fontSize: 15,
              color: AppColors.get.greySubTitle,
            )
          ],
        ),
        // 7.ESH(),
        RatingBarWidget(
          initialRating: double.tryParse(review.rate) ?? 0,
          onRatingUpdate: (value) {},
        ),
        // 7.ESH(),
        CustomText(
          review.review,
          fontSize: 15,
        )
      ],
    );
  }
}
