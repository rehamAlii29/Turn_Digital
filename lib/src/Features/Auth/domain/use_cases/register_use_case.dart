
import '../../../../Core/NetworkStructure/Resources/DataState/data_state.dart';
import '../../../../Super/UseCase/user_case.dart';
import '../../core/params/register_params.dart';
import '../../data/models/user_model.dart';
import '../repositories/register_repository.dart';

class RegisterUseCase extends UseCase<UserModel,RegisterParams>{
  @override
  Future<DataState<UserModel>>? call({RegisterParams? params}) {
    return RegisterRepository.instance.call(params: params);
  }
}