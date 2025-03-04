import 'package:dio/src/response.dart';
import '../../../../Core/NetworkStructure/DataSource/service_interface.dart';
import '../../../../Core/NetworkStructure/Params/params.dart';
import '../../core/fetch_event_details_params.dart';

class FetchEventDetailsService extends ServicesInterface {
  FetchEventDetailsService._();

  static final instance = FetchEventDetailsService._();

  @override
  Future<Response> applyService({Params? params}) {
    return super.call(
      uRLGetEventDetails(
        eventId: (params as FetchEventDetailsParams).id,
      ),
      type: CrudType.get,
      params: params,
    );
  }
}
