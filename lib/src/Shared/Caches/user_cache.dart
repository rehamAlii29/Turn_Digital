import 'package:flutter_base/src/Features/Auth/data/models/user_model.dart';
import '../../Core/Services/Storage/src/Resources/Hive/hive_storage_imp.dart';
import '../../Core/Services/Storage/src/storage_constants.dart';
import '../../Core/Utils/utils.dart';

class UserCache {
  factory UserCache() => instance;

  UserCache._internal();

  static final UserCache instance = UserCache._internal();
  static final _storage = LocalStorageService();

  Future<void> saveUser(UserModel user) async {
    await _storage.saveModel(
      data: user,
      key: stgUserModel,
      boxName: StgBoxName,
      toMap: (data) => data.toMap(),
    );
    await loginUser();
    print("User Saved From Cache => ${user.toMap()}");
  }

  Future<UserModel?> get data async {
    try {
      final user = await _storage.getModel(
        fromMap: (data) => UserModel.fromMap(data),
        key: stgUserModel,
        boxName: StgBoxName,
      );
      if (user == null) return null;
      return user;
    } catch (e) {
      print("Error in getting user from cache => $e");
    }
    return _guestUser;
  }

  Future<void> logout() async {
    await _storage.clearBox(
      boxName: StgBoxName,
      key: stgUserModel,
    );
    await logoutUser();
    print("User Deleted From Cache");
  }

  UserModel get _guestUser {
    return UserModel(
      id: "0",
      name: "Guest${Utils.randomNumber()}",
    );
  }

  final _loginStorage = LocalStorageService();

  Future<bool> get isAuth async {
    final value = await _loginStorage.read<bool>(
      boxName: StgBoxName,
      key: "login",
    );
    return value ?? false;
  }

  Future<void> loginUser() async {
    await _loginStorage.save<bool>(
      key: "login",
      data: true,
      boxName: StgBoxName,
    );
  }

  Future<void> logoutUser() async {
    await _loginStorage.save<bool>(
      key: "login",
      data: false,
      boxName: StgBoxName,
    );
  }
}
