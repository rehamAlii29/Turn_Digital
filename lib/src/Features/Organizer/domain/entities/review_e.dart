import 'package:equatable/equatable.dart';

class ReviewE extends Equatable {
  final String reviewId;
  final String reviewerPicture;
  final String reviewerName;
  final String rate;
  final String review;
  final String reviewDate;

  const ReviewE(
      {required this.reviewId,
      required this.reviewerPicture,
      required this.reviewerName,
      required this.rate,
      required this.review,
      required this.reviewDate});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [reviewId, reviewerPicture, reviewerName, rate, review, reviewDate];
}
