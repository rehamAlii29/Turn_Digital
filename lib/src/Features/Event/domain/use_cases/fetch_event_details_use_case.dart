import 'package:flutter_base/src/Features/AllEvents/core/fetch_all_events_params.dart';
import 'package:flutter_base/src/Features/Event/domain/entities/event_e.dart';

import '../../../../Core/NetworkStructure/Resources/DataState/data_state.dart';
import '../../../../Super/UseCase/user_case.dart';
import '../../core/fetch_event_details_params.dart';
import '../repositories/fetch_event_details_repo.dart';

class FetchEventDetailsUseCase
    extends UseCase<EventE, FetchEventDetailsParams> {
  @override
  Future<DataState<EventE>>? call({FetchEventDetailsParams? params}) {
    return FetchEventDetailsRepo.instance.call(params: params);
  }
}
