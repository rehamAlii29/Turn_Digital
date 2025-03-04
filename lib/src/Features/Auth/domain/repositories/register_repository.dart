import '../../../../Core/NetworkStructure/DataSource/service_interface.dart';
import '../../../../Core/NetworkStructure/Repository/repo_interface.dart';
import '../../data/data_sources/register_api_service.dart';
import '../../data/models/user_model.dart';

class RegisterRepository extends RepoInterface<UserModel> {
  RegisterRepository._();

  static final instance = RegisterRepository._();

  @override
  ServicesInterface get serviceInstance => RegisterApiService.instance;

  @override
  UserModel Function(dynamic data) get onParse => (data) {
        return UserModel.fromMap(data);
      };
}
