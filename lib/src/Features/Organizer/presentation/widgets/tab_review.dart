import 'package:flutter/cupertino.dart';

import '../../domain/entities/review_e.dart';
import 'list_card_review.dart';

class TabReview extends StatelessWidget {
  final List<ReviewE> reviews;

  const TabReview({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return ListCardReview(
      reviews: reviews,
    );
  }
}
