import 'package:flutter_base/src/Features/AllEvents/core/fetch_all_events_params.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';

import '../../../../Core/NetworkStructure/Resources/DataState/data_state.dart';
import '../../../../Super/UseCase/user_case.dart';
import '../repositories/fetch_all_events_repo.dart';

class FetchAllEventUseCase extends UseCase<List<EventE>, FetchAllEventsParams> {
  @override
  Future<DataState<List<EventE>>>? call({FetchAllEventsParams? params}) {
    return FetchAllEventsRepo.instance.call(params: params);
  }
}
