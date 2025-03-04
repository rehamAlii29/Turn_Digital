import 'package:flutter/cupertino.dart';
import '../../Super/Controllers/Resources/get/get_controller_interface.dart';

abstract class PaginationController<T> extends GetControllerInterface<T> {
  bool paginationLoading = false;
  late ScrollController scrollController;

  int get fetchCurrentPage {
    if (state.pagination != null &&
        state.pagination!.totalPages! > state.pagination!.currentPage!) {
      return state.pagination!.currentPage! + 1;
    }
    return 1;
  }

  Future<void> setFetchPaginationFunction({OptionalParams? params});

  bool get canLoading {
    if (state.pagination != null) {
      return state.pagination!.currentPage! < state.pagination!.totalPages!;
    }
    return true;
  }

  void scrollListen() {
    scrollController.addListener(() async {
      var nextPage = 0.8 * scrollController.position.maxScrollExtent;
      if (scrollController.position.pixels > nextPage) {
        if (!paginationLoading && canLoading) {
          paginationLoading = true;
          update();
          await setFetchPaginationFunction();
          paginationLoading = false;
          update();
        }
      }
    });
  }

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollListen();
  }
}

class OptionalParams {
  int? categoryId;

  OptionalParams({this.categoryId});
}
