import 'package:dio/src/response.dart';
import '../../../../Core/NetworkStructure/DataSource/service_interface.dart';
import '../../../../Core/NetworkStructure/Params/params.dart';
import '../../../Event/core/fetch_event_details_params.dart';
import '../../core/fetch_organizer_details.dart';

class FetchOrganizerDetailsService extends ServicesInterface {
  FetchOrganizerDetailsService._();

  static final instance = FetchOrganizerDetailsService._();

  @override
  Future<Response> applyService({Params? params}) {
    return super.call(
      uRLFetchOrganizerDetails(
        id: (params as FetchOrganizerDetailsParams).organizerId,
      ),
      type: CrudType.get,
      params: params,
    );
  }
}
