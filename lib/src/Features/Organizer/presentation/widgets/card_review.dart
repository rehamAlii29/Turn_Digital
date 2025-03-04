import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Organizer/domain/entities/review_e.dart';
import 'package:flutter_base/src/Shared/Presentation/Widgets/GeneralWidgets/Image/generic_image/generic_image.dart';

import 'card_review_content.dart';

class CardReview extends StatelessWidget {
  final ReviewE review;

  const CardReview({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageGeneric.network(
          url: review.reviewerPicture,
          options: const ImageOptions(
              radius: 40, fit: BoxFit.cover, width: 50, height: 50),
        ),
        14.ESW(),
        Expanded(
            child: CardReviewContent(
          review: review,
        ))
      ],
    );
  }
}
