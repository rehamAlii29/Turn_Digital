import '../../../../Core/NetworkStructure/DataSource/service_interface.dart';
import '../../../../Core/NetworkStructure/Repository/repo_interface.dart';
import '../../../../Shared/Caches/user_cache.dart';
import '../../data/data_sources/verify_phone_api_service.dart';
import '../../data/models/user_model.dart';

class VerifyPhoneRepository extends RepoInterface<UserModel> {
  VerifyPhoneRepository._();

  static final instance = VerifyPhoneRepository._();

  @override
  ServicesInterface get serviceInstance => VerifyPhoneApiService.instance;

  @override
  UserModel Function(dynamic data) get onParse => (data) {
        return UserModel.fromMap(
          data,
        );
      };
}
