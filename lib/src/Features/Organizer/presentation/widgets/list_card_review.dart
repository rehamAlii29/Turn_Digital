import 'package:flutter/cupertino.dart';
import 'package:flutter_base/src/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:flutter_base/src/Features/Organizer/presentation/widgets/card_review.dart';

import '../../domain/entities/review_e.dart';

class ListCardReview extends StatelessWidget {
  final List<ReviewE> reviews;

  const ListCardReview({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => CardReview(
              review: reviews[index],
            ),
        separatorBuilder: (context, index) => 16.ESH(),
        itemCount: reviews.length);
  }
}
