import 'package:flutter_base/src/Core/NetworkStructure/Resources/DataState/data_state.dart';
import 'package:flutter_base/src/Features/AllEvents/presentation/manager/cache_event_handler.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';
import '../../../../Core/Services/NetWorkManger/network_manger.dart';
import '../../../../Shared/Managers/pagination_controller.dart';
import '../../core/fetch_all_events_params.dart';
import '../../domain/use_cases/fetch_all_event_use_case.dart';

class FetchAllEventsController extends PaginationController<List<EventE>> {
  List<EventE> cashedEvents = [];

  @override
  Future<void> setFetchPaginationFunction({params}) async {
    if (!canLoading) return;

    if (fetchCurrentPage > (state.pagination?.totalPages ?? 1)) return;
    if (await NetworkManager.isConnected()) {
      final FetchAllEventUseCase useCase = FetchAllEventUseCase();
      DataState<List<EventE>> dataState = await useCase.call(
        params: FetchAllEventsParams(page: fetchCurrentPage, limit: 7),
      )!;

      if (dataState is DataSuccess) {
        List<EventE> oldEvents = state.data ?? [];

        if (dataState.data != null && dataState.data!.isNotEmpty) {
          oldEvents.addAll(dataState.data!);
        }

        state = DataSuccess(
          oldEvents,
          pagination: dataState.pagination,
        );
        notify(state);
        CacheEventHandler.instance.saveToCache(state.data ?? []);
      } else {
        state = dataState;
        notify(state);
      }
      notify(state);
    } else {
      state = DataSuccess(cashedEvents);
      notify(DataSuccess(cashedEvents));
    }
  }

  @override
  void onInit() async {
    super.onInit();
    // await getCashEvents();

    cashedEvents = await CacheEventHandler.instance.getCashEvents();
    setFetchPaginationFunction();
  }

  @override
  void onClose() {
    /// TODO: Implement dispose if needed
    super.onClose();
  }
}
