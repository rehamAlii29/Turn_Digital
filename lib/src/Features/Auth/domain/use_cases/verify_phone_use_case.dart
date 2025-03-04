
import '../../../../Core/NetworkStructure/Resources/DataState/data_state.dart';
import '../../../../Super/UseCase/user_case.dart';
import '../../data/models/user_model.dart';
import '../repositories/verify_phone_repository.dart';

class VerifyPhoneUseCase extends UseCase<UserModel,void>{
  @override
  Future<DataState<UserModel>>? call({void params}) {
    return VerifyPhoneRepository.instance.call();
  }
}