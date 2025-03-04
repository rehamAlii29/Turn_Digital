import 'package:flutter_base/src/Shared/Entities/pagination.dart';

class PaginationModel extends Pagination {
  PaginationModel({
    int? currentPage,
    int? totalPages,
    int? pageSize,
    int? totalItems,
    String? prev,
    String? next,
  }) : super(
          currentPage: currentPage,
          totalPages: totalPages,
          pageSize: pageSize,
          totalItems: totalItems,
          prev: prev,
          next: next,
        );

  factory PaginationModel.fromJson(Map<String, dynamic> map) {
    return PaginationModel(
      currentPage: map['current_page'] ?? 0,
      totalPages: map['total_pages'] ?? 0,
      pageSize: map['page_size'] ?? 0,
      totalItems: map['total_items'] ?? 0,
      prev: map['prev'] ?? '',
      next: map['next'] ?? '',
    );
  }
}
