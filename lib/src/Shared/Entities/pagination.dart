import 'package:equatable/equatable.dart';

class Pagination extends Equatable {
  int? currentPage;
  int? totalPages;
  int? pageSize;
  int? totalItems;
  String? prev;
  String? next;

  Pagination({
    this.currentPage,
    this.totalPages,
    this.pageSize,
    this.totalItems,
    this.prev,
    this.next,
  });

  Pagination copyWith({
    int? currentPage,
    int? totalPages,
    int? pageSize,
    int? totalItems,
    String? prev,
    String? next,
  }) {
    return Pagination(
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      pageSize: pageSize ?? this.pageSize,
      totalItems: totalItems ?? this.totalItems,
      prev: prev ?? this.prev,
      next: next ?? this.next,
    );
  }

  @override
  List<Object?> get props => [
        currentPage,
        totalPages,
        pageSize,
        totalItems,
        prev,
        next,
      ];

  @override
  bool get stringify => true;
}
