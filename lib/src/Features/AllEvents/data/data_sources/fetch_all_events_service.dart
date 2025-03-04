import 'package:dio/src/response.dart';
import 'package:flutter_base/src/Features/AllEvents/core/fetch_all_events_params.dart';

import '../../../../Core/NetworkStructure/DataSource/service_interface.dart';
import '../../../../Core/NetworkStructure/Params/params.dart';

class FetchAllEventsService extends ServicesInterface {
  FetchAllEventsService._();

  static final instance = FetchAllEventsService._();

  @override
  Future<Response> applyService({Params? params}) {
    return super.call(
      uRLFetchAllEvents(
          page: (params as FetchAllEventsParams).page, limit: (params).limit),
      type: CrudType.get,
      params: params,
    );
  }
}
