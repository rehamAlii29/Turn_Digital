import 'package:flutter_base/src/Features/Organizer/domain/entities/review_e.dart';

class ReviewModel extends ReviewE {
  const ReviewModel({
    required super.reviewId,
    required super.reviewerPicture,
    required super.reviewerName,
    required super.rate,
    required super.review,
    required super.reviewDate,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      reviewId: json['review_id'] != null ? json['review_id'].toString() : '',
      reviewerPicture: json['reviewer_picture'] ?? "",
      reviewerName: json['reviewer_name'] ?? "",
      rate: json['rate'] != null ? json['rate'].toString() : '',
      review: json['review'] ?? "",
      reviewDate: json['review_date'] ?? "",
    );
  }
}
