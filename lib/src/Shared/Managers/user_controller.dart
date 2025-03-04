import 'package:flutter_base/src/Core/NetworkStructure/Resources/DataState/data_state.dart';
import 'package:flutter_base/src/Features/Auth/data/models/user_model.dart';
import 'package:flutter_base/src/Shared/Caches/user_cache.dart';
import 'package:flutter_base/src/Super/Controllers/Resources/get/get_controller_interface.dart';

class UserController extends GetControllerInterface<UserModel> {
  UserModel? user;

  getUSerFromCache() async {
    user = await UserCache.instance.data;
    print("user is $user");
    // state = DataSuccess(user!);
    update();
  }

  setUser(UserModel userM) {
    user = userM;
    update();
  }

  updateUSer(UserModel user) async {
    await UserCache.instance.saveUser(user);
    getUSerFromCache();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUSerFromCache();
  }
}
